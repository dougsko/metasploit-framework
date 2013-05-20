shared_examples_for 'Msf::ModuleManager::Loading' do
	context '#file_changed?' do
		let(:module_basename) do
			[basename_prefix, '.rb']
		end

		it 'should return true if module info is not cached' do
			Tempfile.open(module_basename) do |tempfile|
				module_path = tempfile.path

				subject.send(:module_info_by_path)[module_path].should be_nil
				subject.file_changed?(module_path).should be_true
			end
		end

		it 'should return true if the cached type is Msf::MODULE_PAYLOAD' do
			Tempfile.open(module_basename) do |tempfile|
				module_path = tempfile.path
				modification_time = File.mtime(module_path)

				subject.send(:module_info_by_path)[module_path] = {
						# :modification_time must match so that it is the :type that is causing the `true` and not the
						# :modification_time causing the `true`.
						:modification_time => modification_time,
						:type => Msf::MODULE_PAYLOAD
				}

				subject.file_changed?(module_path).should be_true
			end
		end

		context 'with cache module info and not a payload module' do
			it 'should return true if the file does not exist on the file system' do
				tempfile = Tempfile.new(module_basename)
				module_path = tempfile.path
				modification_time = File.mtime(module_path).to_i

				subject.send(:module_info_by_path)[module_path] = {
						:modification_time => modification_time
				}

				tempfile.unlink

				File.exist?(module_path).should be_false
				subject.file_changed?(module_path).should be_true
			end

			it 'should return true if modification time does not match the cached modification time' do
				Tempfile.open(module_basename) do |tempfile|
					module_path = tempfile.path
					modification_time = File.mtime(module_path).to_i
					cached_modification_time = (modification_time * rand).to_i

					subject.send(:module_info_by_path)[module_path] = {
							:modification_time => cached_modification_time
					}

					cached_modification_time.should_not == modification_time
					subject.file_changed?(module_path).should be_true
				end
			end

			it 'should return false if modification time does match the cached modification time' do
				Tempfile.open(module_basename) do |tempfile|
					module_path = tempfile.path
					modification_time = File.mtime(module_path).to_i
					cached_modification_time = modification_time

					subject.send(:module_info_by_path)[module_path] = {
							:modification_time => cached_modification_time
					}

					cached_modification_time.should == modification_time
					subject.file_changed?(module_path).should be_false
				end
			end
		end
	end

	context '#on_module_load' do
	  def on_module_load
			module_manager.on_module_load(klass, type, reference_name, options)
		end

		let(:annotated_class) do
			# stub out include? so calls in auto_subscribe_module work.
			mock('Annotated Class', :include? => false)
		end

		let(:klass) do
			Class.new(Msf::Auxiliary)
		end

		let(:module_set) do
			module_manager.module_set(type)
		end

		let(:options) do
			{
					'files' => [
							path
					],
					'paths' => [
							reference_name
					],
					'type' => type
			}
		end

		let(:path) do
			type_directory = Mdm::Module::Detail::DIRECTORY_BY_TYPE[type]

			Metasploit::Framework.root.join(
					'modules',
					type_directory,
					"#{reference_name}.rb"
			).to_path
		end

		let(:reference_name) do
			FactoryGirl.generate :mdm_module_detail_refname
		end

		let(:type) do
			klass.type
		end

		it "should add module to type's module_set" do
			module_set.should_receive(:add_module).with(
					klass,
					reference_name,
					options
			).and_return(annotated_class)

			on_module_load
		end

		context 'annotated class' do
			before(:each) do
				module_set.stub(:add_module).and_return(annotated_class)
			end

			it 'should return annotated class from Msf::ModuleSet#add_module' do
				on_module_load.should == annotated_class
			end

			it 'should pass annotated class to Msf::ModuleManager#auto_subscribe_module' do
				module_manager.should_receive(:auto_subscribe_module).with(annotated_class)

				on_module_load
			end

			it 'should fire on_module_load event' do
				framework.events.should_receive(:on_module_load).with(
						reference_name,
						annotated_class
				)

				on_module_load
			end
		end


	end
end
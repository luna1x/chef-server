# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "chef"
  s.version = "11.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Jacob"]
  s.date = "2013-10-08"
  s.description = "A systems integration framework, built to bring the benefits of configuration management to your entire infrastructure."
  s.email = "adam@opscode.com"
  s.executables = ["chef-client", "chef-solo", "knife", "chef-shell", "shef", "chef-apply", "chef-service-manager"]
  s.extra_rdoc_files = ["README.md", "CONTRIBUTING.md", "LICENSE"]
  s.files = ["bin/chef-client", "bin/chef-solo", "bin/knife", "bin/chef-shell", "bin/shef", "bin/chef-apply", "bin/chef-service-manager", "README.md", "CONTRIBUTING.md", "LICENSE"]
  s.homepage = "http://wiki.opscode.com/display/chef"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A systems integration framework, built to bring the benefits of configuration management to your entire infrastructure."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-config>, [">= 1.1.2", "~> 1.1"])
      s.add_runtime_dependency(%q<mixlib-cli>, ["~> 1.3"])
      s.add_runtime_dependency(%q<mixlib-log>, ["~> 1.3"])
      s.add_runtime_dependency(%q<mixlib-authentication>, ["~> 1.3"])
      s.add_runtime_dependency(%q<mixlib-shellout>, ["~> 1.1"])
      s.add_runtime_dependency(%q<ohai>, ["< 7.0.0", ">= 0.6.0"])
      s.add_runtime_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
      s.add_runtime_dependency(%q<json>, ["<= 1.7.7", ">= 1.4.4"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_runtime_dependency(%q<net-ssh>, ["~> 2.6"])
      s.add_runtime_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<highline>, [">= 1.6.9", "~> 1.6"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.7"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<sdoc>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rack>, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>, [">= 0"])
      s.add_development_dependency(%q<rspec-core>, ["~> 2.12.0"])
      s.add_development_dependency(%q<rspec-expectations>, ["~> 2.12.0"])
      s.add_development_dependency(%q<rspec-mocks>, ["~> 2.12.0"])
      s.add_development_dependency(%q<chef-zero>, ["~> 1.4"])
      s.add_development_dependency(%q<puma>, ["~> 1.6"])
    else
      s.add_dependency(%q<mixlib-config>, [">= 1.1.2", "~> 1.1"])
      s.add_dependency(%q<mixlib-cli>, ["~> 1.3"])
      s.add_dependency(%q<mixlib-log>, ["~> 1.3"])
      s.add_dependency(%q<mixlib-authentication>, ["~> 1.3"])
      s.add_dependency(%q<mixlib-shellout>, ["~> 1.1"])
      s.add_dependency(%q<ohai>, ["< 7.0.0", ">= 0.6.0"])
      s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
      s.add_dependency(%q<json>, ["<= 1.7.7", ">= 1.4.4"])
      s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_dependency(%q<net-ssh>, ["~> 2.6"])
      s.add_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
      s.add_dependency(%q<highline>, [">= 1.6.9", "~> 1.6"])
      s.add_dependency(%q<erubis>, ["~> 2.7"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<sdoc>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>, [">= 0"])
      s.add_dependency(%q<rspec-core>, ["~> 2.12.0"])
      s.add_dependency(%q<rspec-expectations>, ["~> 2.12.0"])
      s.add_dependency(%q<rspec-mocks>, ["~> 2.12.0"])
      s.add_dependency(%q<chef-zero>, ["~> 1.4"])
      s.add_dependency(%q<puma>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<mixlib-config>, [">= 1.1.2", "~> 1.1"])
    s.add_dependency(%q<mixlib-cli>, ["~> 1.3"])
    s.add_dependency(%q<mixlib-log>, ["~> 1.3"])
    s.add_dependency(%q<mixlib-authentication>, ["~> 1.3"])
    s.add_dependency(%q<mixlib-shellout>, ["~> 1.1"])
    s.add_dependency(%q<ohai>, ["< 7.0.0", ">= 0.6.0"])
    s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
    s.add_dependency(%q<json>, ["<= 1.7.7", ">= 1.4.4"])
    s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
    s.add_dependency(%q<net-ssh>, ["~> 2.6"])
    s.add_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
    s.add_dependency(%q<highline>, [">= 1.6.9", "~> 1.6"])
    s.add_dependency(%q<erubis>, ["~> 2.7"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<sdoc>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>, [">= 0"])
    s.add_dependency(%q<rspec-core>, ["~> 2.12.0"])
    s.add_dependency(%q<rspec-expectations>, ["~> 2.12.0"])
    s.add_dependency(%q<rspec-mocks>, ["~> 2.12.0"])
    s.add_dependency(%q<chef-zero>, ["~> 1.4"])
    s.add_dependency(%q<puma>, ["~> 1.6"])
  end
end

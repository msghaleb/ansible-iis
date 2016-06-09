require 'serverspec'

# Required by serverspec
set :backend, :exec

describe port(80) do
  it { should be_listening }
end

describe port(81) do
  it { should_not be_listening }
end

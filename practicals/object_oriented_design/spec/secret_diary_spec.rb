require 'secret_diary'

describe SecretDiary do
  it { expect(SecretDiary.new).to respond_to(:lock) }
  it { expect(SecretDiary.new).to respond_to(:unlock) }
  it { expect(SecretDiary.new).to respond_to(:add_entries) }
  it { expect(SecretDiary.new).to respond_to(:get_entries) }
end

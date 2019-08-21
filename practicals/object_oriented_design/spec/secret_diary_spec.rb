require 'secret_diary'

describe LockUnlock do
  it { expect(LockUnlock.new).to respond_to(:lock) }
  it { expect(LockUnlock.new).to respond_to(:unlock) }
end

describe DiaryEdit do
  it { expect(DiaryEdit.new).to respond_to(:add_entries) }
  it { expect(DiaryEdit.new).to respond_to(:get_entries) }
end

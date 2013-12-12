require 'spec_helper'

require 'lrcat/catalog/image'

require 'lrcat/catalog/exif_metadata'
require 'lrcat/catalog/develop_settings'
require 'lrcat/catalog/additional_metadata'

include Lrcat

describe '#id_local' do
  it 'returns an integer' do
    expect(Catalog::Image.first.id_local).to be_a(Integer)
  end
end

describe '#develop_settings' do
  it 'returns the develop settings' do
    expect(Catalog::Image.first.develop_settings).to be_an_instance_of(Catalog::DevelopSettings)
  end
end

describe '#exif_metadata' do
  it 'returns the exif metadatas' do
    expect(Catalog::Image.first.exif_metadata).to be_an_instance_of(Catalog::ExifMetadata)
  end
end

describe '#additional_metadata' do
  it 'returns the additional metadatas' do
    expect(Catalog::Image.first.additional_metadata).to be_an_instance_of(Catalog::AdditionalMetadata)
  end
end

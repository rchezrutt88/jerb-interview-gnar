require 'test_helper'

class JobTest < ActiveSupport::TestCase

  def setup
    @job = jobs(:one)
  end

  test 'valid job' do
    assert @job.valid?
  end

  test 'invalid job without poster' do
    @job.poster = nil
    refute @job.valid?, 'saved without poster'
  end

  test 'invalid job without location' do
    @job.location = nil
    refute @job.valid?, 'saved without location'
  end

  test 'invalid job without status' do
    @job.status = nil
    refute @job.valid?, 'saved without status'
  end

  test 'invalid job with invalid status' do
    @job.status = 'overdue'
    refute @job.valid?, 'saved with invalid status'
  end

  test 'invalid job without category' do
    @job.category = nil
    refute @job.valid?, 'saved without category'
  end
end

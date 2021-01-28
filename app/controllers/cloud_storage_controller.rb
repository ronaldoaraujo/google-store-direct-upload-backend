require "google/cloud/storage"

class CloudStorageController < ApplicationController
  def generate_signed_post_policy_v4
    storage = Google::Cloud::Storage.new project_id: 'neotelemed-main', keyfile: './config/gcloud-keyfile.json'
    bucket = storage.bucket params[:bucket]
    post_object = bucket.generate_signed_post_policy_v4(
      params[:file_name],
      expires: 600
    )
    render json: post_object
  end
end

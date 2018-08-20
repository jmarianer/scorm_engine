RSpec.describe ScormEngine::Models::Dispatch do
  describe ".new_from_api" do
    describe ":destination_id" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "destinationId" => "dest-id"
          }
        )
        expect(dispatch.destination_id).to eq "dest-id"
      end
    end

    describe ":course_id" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "courseId" => "course-id"
          }
        )
        expect(dispatch.course_id).to eq "course-id"
      end
    end

    describe ":allow_new_registrations" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "allowNewRegistrations" => true
          }
        )
        expect(dispatch.allow_new_registrations).to eq true
      end
    end

    describe ":instanced" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "instanced" => true
          }
        )
        expect(dispatch.instanced).to eq true
      end
    end

    describe ":registration_cap" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "registrationCap" => "123"
          }
        )
        expect(dispatch.registration_cap).to eq 123
      end
    end

    describe ":expiration_date" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "expirationDate" => "2018-05-24"
          }
        )
        expect(dispatch.expiration_date.to_date).to eq Date.new(2018, 5, 24)
      end

      it "is set to nil if blank" do
        dispatch = described_class.new_from_api({})
        expect(dispatch.expiration_date).to eq nil
      end
    end

    describe ":external_config" do
      it "is set" do
        dispatch = described_class.new_from_api(
          "data" => {
            "externalConfig" => "this one goes to 11"
          }
        )
        expect(dispatch.external_config).to eq "this one goes to 11"
      end
    end
  end
end

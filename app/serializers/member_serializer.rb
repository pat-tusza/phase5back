class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :cid, :party, :office, :gender, :birthdate, :first_elected
end

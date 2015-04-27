type :certification

certification :isae_3402_ii_soc_2
certification :soc_1_ssae_16
certification :soc_2_ssae_16
certification :sas_70_ii
certification :iso_27001

type :encryption_base

encryption_base :container_based
encryption_base :directory_based

type :encryption_algorithm

encryption_algorithm :aes
encryption_algorithm :blowfish
encryption_algorithm :rsa
encryption_algorithm :serpent
encryption_algorithm :twofish

type :data_encryption do
  key_control
  encryption_base
  encryption_algorithm
end

type :transmission_encryption do
  string :name
  string :version
end

jurisdiction :hipaa
jurisdiction :fisma
jurisdiction :ferpa
jurisdiction :safe_harbor

country :us do
  jurisdiction safe_harbor
  jurisdiction hipaa
  jurisdiction fisma
  jurisdiction ferpa
end

type :security do
  authentication do
    boolean :two_factor_auth
    boolean :sso
  end

  authorization do
    boolean :file_locking
    boolean :permission_revocation
    boolean :granular_permission
  end

  list_of_audit_options
  list_of_certifications
  boolean :monitoring

  data_encryption
  transmission_encryption
end

service_properties do
  security
end
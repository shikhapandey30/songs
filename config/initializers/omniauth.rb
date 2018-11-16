Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '433592010474964', '547da79dec038a932f4c846986398f63'
  provider :linkedin, '81q662zzjusm67', 'xZyEHlGAaZI8Gm9q'
  provider :twitter, 'y6kILe3VwuGpaFIIfPXdnv8pw', 'Gb76xJS6ZvTrzzxp0jNFLnZG2nNhNaaNPfx5FAWLrL5y11e14D'
  provider :instagram, "dede096ffc604075bfe25301e2155162", "02276b5992fe4a779b23f306224726e9"
end
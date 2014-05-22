cd ../../data/higgs;

M = csvread('training.csv',1,1);
X = M(:, 1:30);
X = [ones(size(X, 1), 1), X];
clear M;

DER_mass_MMC = M(:, 1);				% Estimated mass of Higgs boson candidate, MeV/c^2
DER_mass_transverse_met_lep = M(:, 2);		% Transverse mass between the missing transverse energy and the lepton
DER_mass_vis = M(:, 3);				% The invariant mass of the hadronic tau and lepton
DER_pt_h = M(:, 4);				% Modulus of the of the vector sum of the transverse momentum of the hadronic tau, the lepton, and the missing transverse energy vector.
DER_deltaeta_jet_jet = M(:, 5);			% The pseudorapidity separation  between the two jets
DER_mass_jet_jet = M(:, 6);			% The invariant mass of the two jets
DER_prodeta_jet_jet = M(:, 7);			% The absolute value of the product of the pseudorapidities of the two jets
DER_deltar_tau_lep = M(:, 8);			% The R separation between the hadronic tau and the lepton
DER_pt_tot = M(:, 9);				% The mod of the vector sum of the missing transverse momenta and the transverse momenta of the hadronic tau, the lepton, the leading jet and the subleading jet.
DER_sum_pt = M(:, 10);				% The sum of the moduli of the transverse momenta of the hadronic tau, the lepton, the leading jet and the subleading jet and the other jets.
DER_pt_ratio_lep_tau = M(:, 11);		% The ratio of the transverse momenta of the lepton and the hadronic tau.
DER_met_phi_centrality = M(:, 12);		% The centrality of the azimuthal angle of the missing transverse energy vector w.r.t. the hadronic tau and the lepton
DER_lep_eta_centrality = M(:, 13);		% The centrality of the pseudorapidity of the lepton w.r.t. the two jets
PRI_tau_pt = M(:, 14);				% The transverse momentum of the hadronic tau
PRI_tau_eta = M(:, 15);				% The pseudorapidity of the hadronic tau
PRI_tau_phi = M(:, 16);				% The azimuth angle phi of the hadronic tau
PRI_lep_pt = M(:, 17);				% The transverse momentum of the lepton (electron or muon)
PRI_lep_eta = M(:, 18);				% The pseudorapidity of the lepton
PRI_lep_phi = M(:, 19);				% The azimuth angle phi of the lepton
PRI_met = M(:, 20);				% The missing transverse energy
PRI_met_phi = M(:, 21);				% The azimuth angle phi of the missing transverse energy.
PRI_met_sumet = M(:, 22);			% The total transverse energy in the detector
PRI_jet_num = M(:, 23);				% The number of jets
PRI_jet_leading_pt = M(:, 24);			% The transverse momentum of the leading jet, that is, the one with the largest transverse momentum
PRI_jet_leading_eta = M(:, 25);			% The pseudorapidity of the leading jet
PRI_jet_leading_phi = M(:, 26);			% The azimuth angle of the leading jet
PRI_jet_subleading_pt = M(:, 27);		% The transverse momentum of the subleading jet, that is, the one with the second largest transverse momentum
PRI_jet_subleading_eta = M(:, 28);		% The pseudorapidity of the subleading jet
PRI_jet_subleading_phi = M(:, 29);		% The azimuth angle of the subleading jet
PRI_jet_all_pt = M(:, 30);			% The scalar sum of the transverse momentum of all the jets of the events

y = csvread('labels.csv');			% The event label in 1's and 0's. NOT IN ORIGINAL FILE, DONE IN EXCEL.
y = y(3:end)';

cd ../../kaggle/higgs;



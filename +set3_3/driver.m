%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'set3_3';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'eps'};
M_.exo_names_tex(1) = {'eps'};
M_.exo_names_long(1) = {'eps'};
M_.endo_names = cell(5,1);
M_.endo_names_tex = cell(5,1);
M_.endo_names_long = cell(5,1);
M_.endo_names(1) = {'pi'};
M_.endo_names_tex(1) = {'pi'};
M_.endo_names_long(1) = {'pi'};
M_.endo_names(2) = {'y_tilde'};
M_.endo_names_tex(2) = {'y\_tilde'};
M_.endo_names_long(2) = {'y_tilde'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'i'};
M_.endo_names_long(3) = {'i'};
M_.endo_names(4) = {'r_n'};
M_.endo_names_tex(4) = {'r\_n'};
M_.endo_names_long(4) = {'r_n'};
M_.endo_names(5) = {'W'};
M_.endo_names_tex(5) = {'W'};
M_.endo_names_long(5) = {'W'};
M_.endo_partitions = struct();
M_.param_names = cell(10,1);
M_.param_names_tex = cell(10,1);
M_.param_names_long = cell(10,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'sigma'};
M_.param_names_tex(2) = {'sigma'};
M_.param_names_long(2) = {'sigma'};
M_.param_names(3) = {'rho'};
M_.param_names_tex(3) = {'rho'};
M_.param_names_long(3) = {'rho'};
M_.param_names(4) = {'kappa'};
M_.param_names_tex(4) = {'kappa'};
M_.param_names_long(4) = {'kappa'};
M_.param_names(5) = {'sigma_r2'};
M_.param_names_tex(5) = {'sigma\_r2'};
M_.param_names_long(5) = {'sigma_r2'};
M_.param_names(6) = {'phi_pi'};
M_.param_names_tex(6) = {'phi\_pi'};
M_.param_names_long(6) = {'phi_pi'};
M_.param_names(7) = {'M'};
M_.param_names_tex(7) = {'M'};
M_.param_names_long(7) = {'M'};
M_.param_names(8) = {'rho_r'};
M_.param_names_tex(8) = {'rho\_r'};
M_.param_names_long(8) = {'rho_r'};
M_.param_names(9) = {'rho_i'};
M_.param_names_tex(9) = {'rho\_i'};
M_.param_names_long(9) = {'rho_i'};
M_.param_names(10) = {'e'};
M_.param_names_tex(10) = {'e'};
M_.param_names_long(10) = {'e'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 5;
M_.param_nbr = 10;
M_.orig_endo_nbr = 5;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = 5;
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 5;
M_.eq_nbr = 5;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 3 8;
 0 4 9;
 0 5 0;
 2 6 0;
 0 7 0;]';
M_.nstatic = 2;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 1;
M_.nsfwrd   = 2;
M_.nspred   = 2;
M_.ndynamic   = 3;
M_.dynamic_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'r_n' ;
  2 , 'name' , 'pi' ;
  3 , 'name' , 'y_tilde' ;
  4 , 'name' , 'i' ;
  5 , 'name' , 'W' ;
};
M_.mapping.pi.eqidx = [2 3 4 5 ];
M_.mapping.y_tilde.eqidx = [2 3 5 ];
M_.mapping.i.eqidx = [3 4 ];
M_.mapping.r_n.eqidx = [1 3 ];
M_.mapping.W.eqidx = [5 ];
M_.mapping.eps.eqidx = [1 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 4 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(5, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(10, 1);
M_.endo_trends = struct('deflator', cell(5, 1), 'log_deflator', cell(5, 1), 'growth_factor', cell(5, 1), 'log_growth_factor', cell(5, 1));
M_.NNZDerivatives = [17; 1; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(3) = 0.02;
rho = M_.params(3);
M_.params(8) = 0.85;
rho_r = M_.params(8);
M_.params(2) = 2;
sigma = M_.params(2);
M_.params(4) = 0.1;
kappa = M_.params(4);
M_.params(1) = 0.9938458616151649;
beta = M_.params(1);
M_.params(5) = 0.01;
sigma_r2 = M_.params(5);
M_.params(6) = 1.5;
phi_pi = M_.params(6);
M_.params(7) = 1.2;
M = M_.params(7);
M_.params(9) = 0.9;
rho_i = M_.params(9);
M_.params(10) = M_.params(7)/(M_.params(7)-1);
e = M_.params(10);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(2) = 0;
oo_.steady_state(1) = 0.01;
oo_.steady_state(3) = 0.02;
oo_.steady_state(4) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'set3_3_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end

function result=gauss_int_trial_test(coef_fun, vertices, basis_type_trial,basis_type_test,basis_index_trial, basis_index_test,...
                                                                der_trial,der_test,gauss_type)
[gauss_weight,gauss_point]=generate_gauss_formula(vertices,gauss_type);
result = sum(gauss_weight.*coef_fun(gauss_point)...
        .*FE_local_basis(gauss_point,vertices,basis_type_trial,basis_index_trial,der_trial)...
        .*FE_local_basis(gauss_point,vertices,basis_type_test,basis_index_test,der_test));
end
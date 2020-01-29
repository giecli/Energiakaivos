function out = model
%
% temp.m
%
% Model exported on Jan 29 2020, 16:00 by COMSOL 5.5.0.292.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('E:\Work\Energiakaivos\Code');

model.label('fan_model_3d');

model.component.create('component', true);

model.component('component').geom.create('geometry', 3);

model.component('component').mesh.create('mesh');

model.func.create('initial_temperature_function', 'Analytic');
model.func('initial_temperature_function').label('Initial Temperature Function');
model.func('initial_temperature_function').set('funcname', 'T_initial');
model.func('initial_temperature_function').set('expr', 'T_surface-q_geothermal/k_rock*z');
model.func('initial_temperature_function').set('args', 'z');
model.func('initial_temperature_function').set('argunit', 'm');
model.func('initial_temperature_function').set('fununit', 'K');
model.func.create('step_function', 'Step');
model.func('step_function').label('Step Function');
model.func('step_function').set('funcname', 'step');
model.func('step_function').set('location', '1/24');
model.func('step_function').set('smooth', '1/12');

model.component('component').geom('geometry').create('work_plane_cbhe_structure1', 'WorkPlane');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').label('Work Plane for CBHE Structure 1');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').set('planetype', 'normalvector');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').set('normalcoord', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').set('normalvector', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').set('unite', true);
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.create('circle1', 'Circle');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle1').label('Circle 1');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle1').set('r', 0.5);
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.create('circle2', 'Circle');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle2').label('Circle 2');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle2').set('r', 0.038);
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.create('circle3', 'Circle');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle3').label('Circle 3');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle3').set('r', 0.025);
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.create('circle4', 'Circle');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle4').label('Circle 4');
model.component('component').geom('geometry').feature('work_plane_cbhe_structure1').geom.feature('circle4').set('r', 0.016);
model.component('component').geom('geometry').create('extrusion_cbhe_structure1', 'Extrude');
model.component('component').geom('geometry').feature('extrusion_cbhe_structure1').label('Extrusion for CBHE Structure Work Plane 1');
model.component('component').geom('geometry').feature('extrusion_cbhe_structure1').setIndex('distance', 300, 0);
model.component('component').geom('geometry').feature('extrusion_cbhe_structure1').selection('input').set({'work_plane_cbhe_structure1'});
model.component('component').geom('geometry').create('work_plane_upper_cylinder1', 'WorkPlane');
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').label('Work Plane for Upper Cylinder 1');
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').set('planetype', 'normalvector');
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').set('normalcoord', {'9.750000' '9.750000' '-13.788582'});
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').set('normalvector', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').set('unite', true);
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').geom.create('circle1', 'Circle');
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').geom.feature('circle1').label('Circle 1');
model.component('component').geom('geometry').feature('work_plane_upper_cylinder1').geom.feature('circle1').set('r', 0.5);
model.component('component').geom('geometry').create('extrusion_upper_cylinder1', 'Extrude');
model.component('component').geom('geometry').feature('extrusion_upper_cylinder1').label('Extrusion for Upper Cylinder Work Plane 1');
model.component('component').geom('geometry').feature('extrusion_upper_cylinder1').setIndex('distance', 0.5, 0);
model.component('component').geom('geometry').feature('extrusion_upper_cylinder1').selection('input').set({'work_plane_upper_cylinder1'});
model.component('component').geom('geometry').create('work_plane_lower_cylinder1', 'WorkPlane');
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').label('Work Plane for Lower Cylinder 1');
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').set('planetype', 'normalvector');
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').set('normalcoord', {'160.000000' '160.000000' '-226.274170'});
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').set('normalvector', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').set('unite', true);
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').geom.create('circle1', 'Circle');
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').geom.feature('circle1').label('Circle 1');
model.component('component').geom('geometry').feature('work_plane_lower_cylinder1').geom.feature('circle1').set('r', 0.5);
model.component('component').geom('geometry').create('extrusion_lower_cylinder1', 'Extrude');
model.component('component').geom('geometry').feature('extrusion_lower_cylinder1').label('Extrusion for Lower Cylinder Work Plane 1');
model.component('component').geom('geometry').feature('extrusion_lower_cylinder1').setIndex('distance', 0.5, 0);
model.component('component').geom('geometry').feature('extrusion_lower_cylinder1').selection('input').set({'work_plane_lower_cylinder1'});
model.component('component').geom('geometry').run('fin');
model.component('component').geom('geometry').create('buffer_zone_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('buffer_zone_selection1').label('Buffer Zone Selection 1');
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('r', 0.501);
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('rin', 0.037);
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('top', 300.001);
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('buffer_zone_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('outer_fluid_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('outer_fluid_selection1').label('Outer Fluid Selection 1');
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('r', 0.039);
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('rin', 0.024);
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('top', 300.001);
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('outer_fluid_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('pipe_wall_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('pipe_wall_selection1').label('Pipe Wall Selection 1');
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('r', 0.026000000000000002);
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('rin', 0.001);
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('top', 300.001);
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('pipe_wall_selection1').set('condition', 'inside');
model.component('component').geom('geometry').create('inner_fluid_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('inner_fluid_selection1').label('Inner Fluid Selection 1');
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('r', 0.017);
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('rin', '0');
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('top', 300.001);
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('inner_fluid_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('borehole_structure_selection1', 'UnionSelection');
model.component('component').geom('geometry').feature('borehole_structure_selection1').set('input', {'buffer_zone_selection1' 'outer_fluid_selection1' 'pipe_wall_selection1' 'inner_fluid_selection1'});
model.component('component').geom('geometry').create('borehole_wall_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('borehole_wall_selection1').label('Borehole Wall Selection 1');
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('r', 0.039);
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('rin', 0.037);
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('top', 300.001);
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('borehole_wall_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('upper_cylinder_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('upper_cylinder_selection1').label('Upper Cylinder Selection 1');
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('r', 0.501);
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('rin', '0');
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('top', 0.501);
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('pos', {'9.750000' '9.750000' '-13.788582'});
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('upper_cylinder_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('lower_cylinder_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('lower_cylinder_selection1').label('Lower Cylinder Selection 1');
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('r', 0.501);
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('rin', '0');
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('top', 0.501);
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('pos', {'160.000000' '160.000000' '-226.274170'});
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('lower_cylinder_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('cylinders_selection1', 'UnionSelection');
model.component('component').geom('geometry').feature('cylinders_selection1').set('input', {'upper_cylinder_selection1' 'lower_cylinder_selection1'});
model.component('component').geom('geometry').create('outer_cap_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('outer_cap_selection1').label('Outer Cap Selection 1');
model.component('component').geom('geometry').feature('outer_cap_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('outer_cap_selection1').set('r', 0.501);
model.component('component').geom('geometry').feature('outer_cap_selection1').set('rin', 0.037);
model.component('component').geom('geometry').feature('outer_cap_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('outer_cap_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('outer_cap_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('outer_cap_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('outer_cap_selection1').set('condition', 'inside');
model.component('component').geom('geometry').create('inner_cap_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('inner_cap_selection1').label('Inner Cap Selection 1');
model.component('component').geom('geometry').feature('inner_cap_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('inner_cap_selection1').set('r', 0.039);
model.component('component').geom('geometry').feature('inner_cap_selection1').set('rin', 0);
model.component('component').geom('geometry').feature('inner_cap_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('inner_cap_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('inner_cap_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('inner_cap_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('inner_cap_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('top_inlet_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('top_inlet_selection1').label('Top Inlet Selection 1');
model.component('component').geom('geometry').feature('top_inlet_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('top_inlet_selection1').set('r', 0.039);
model.component('component').geom('geometry').feature('top_inlet_selection1').set('rin', 0.024);
model.component('component').geom('geometry').feature('top_inlet_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('top_inlet_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('top_inlet_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('top_inlet_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('top_inlet_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('top_outlet_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('top_outlet_selection1').label('Top Outlet Selection 1');
model.component('component').geom('geometry').feature('top_outlet_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('top_outlet_selection1').set('r', 0.017);
model.component('component').geom('geometry').feature('top_outlet_selection1').set('rin', '0');
model.component('component').geom('geometry').feature('top_outlet_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('top_outlet_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('top_outlet_selection1').set('pos', {'10.000000' '10.000000' '-14.142136'});
model.component('component').geom('geometry').feature('top_outlet_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('top_outlet_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('bottom_outlet_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('bottom_outlet_selection1').label('Bottom Outlet Selection 1');
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('r', 0.039);
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('rin', 0.024);
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('pos', {'160.000000' '160.000000' '-226.274170'});
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('bottom_outlet_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').create('bottom_intlet_selection1', 'CylinderSelection');
model.component('component').geom('geometry').feature('bottom_intlet_selection1').label('Bottom Inlet Selection 1');
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('entitydim', 2);
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('r', 0.017);
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('rin', '0');
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('top', 0.001);
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('bottom', -0.001);
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('pos', {'160.000000' '160.000000' '-226.274170'});
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('axis', {'0.500000' '0.500000' '-0.707107'});
model.component('component').geom('geometry').feature('bottom_intlet_selection1').set('condition', 'allvertices');
model.component('component').geom('geometry').run('fin');

model.component('component').mesh('mesh').create('inner_cap_mesh1', 'FreeTri');
model.component('component').mesh('mesh').feature('inner_cap_mesh1').label('Inner Cap Mesh 1');
model.component('component').mesh('mesh').feature('inner_cap_mesh1').selection.named('geometry_inner_cap_selection1');
model.component('component').mesh('mesh').feature('inner_cap_mesh1').create('size', 'Size');
model.component('component').mesh('mesh').feature('inner_cap_mesh1').feature('size').set('hauto', 1);
model.component('component').mesh('mesh').feature('inner_cap_mesh1').feature('size').set('custom', true);
model.component('component').mesh('mesh').feature('inner_cap_mesh1').feature('size').set('hmax', 0.015);
model.component('component').mesh('mesh').feature('inner_cap_mesh1').feature('size').set('hmaxactive', true);
model.component('component').mesh('mesh').create('outer_cap_mesh1', 'FreeTri');
model.component('component').mesh('mesh').feature('outer_cap_mesh1').label('Outer Cap Mesh 1');
model.component('component').mesh('mesh').feature('outer_cap_mesh1').selection.named('geometry_outer_cap_selection1');
model.component('component').mesh('mesh').feature('outer_cap_mesh1').create('size', 'Size');
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('hauto', 1);
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('custom', 'on');
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('hgrad', 1.2);
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('hgradactive', true);
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('hmax', 0.1);
model.component('component').mesh('mesh').feature('outer_cap_mesh1').feature('size').set('hmaxactive', true);
model.component('component').mesh('mesh').create('swept_mesh1', 'Sweep');
model.component('component').mesh('mesh').feature('swept_mesh1').label('Swept Mesh 1');
model.component('component').mesh('mesh').feature('swept_mesh1').selection.geom('geometry', 3);
model.component('component').mesh('mesh').feature('swept_mesh1').selection.named('geometry_borehole_structure_selection1');
model.component('component').mesh('mesh').feature('swept_mesh1').create('distribution', 'Distribution');
model.component('component').mesh('mesh').feature('swept_mesh1').feature('distribution').set('type', 'predefined');
model.component('component').mesh('mesh').feature('swept_mesh1').feature('distribution').set('elemcount', 300);
model.component('component').mesh('mesh').feature('swept_mesh1').feature('distribution').set('elemratio', 10);
model.component('component').mesh('mesh').feature('swept_mesh1').feature('distribution').set('symmetric', true);
model.component('component').mesh('mesh').create('cylinders_mesh1', 'FreeTet');
model.component('component').mesh('mesh').feature('cylinders_mesh1').label('Cylinders Mesh 1');
model.component('component').mesh('mesh').feature('cylinders_mesh1').selection.geom('geometry', 3);
model.component('component').mesh('mesh').feature('cylinders_mesh1').selection.named('geometry_cylinders_selection1');
model.component('component').mesh('mesh').feature('cylinders_mesh1').create('size', 'Size');
model.component('component').mesh('mesh').feature('cylinders_mesh1').feature('size').set('hauto', 3);

model.component('component').physics.create('physics', 'HeatTransfer', 'geometry');
model.component('component').physics('physics').prop('ShapeProperty').set('order_temperature', 1);
model.component('component').physics('physics').field('temperature').field('T');
model.component('component').physics('physics').identifier('physics');
model.component('component').physics('physics').label('physics');
model.component('component').physics('physics').label('Heat Transfer');
model.component('component').physics('physics').feature('init1').set('Tinit', 'T_initial(z-tunnel_depth)');
model.component('component').physics('physics').feature('init1').label('Initial Values');
model.component('component').physics('physics').feature('solid1').set('k_mat', 'userdef');
model.component('component').physics('physics').feature('solid1').set('k', {'3' '0' '0' '0' '3' '0' '0' '0' '3'});
model.component('component').physics('physics').feature('solid1').label('Bedrock Physics');
model.component('component').physics('physics').feature('solid1').set('rho_mat', 'userdef');
model.component('component').physics('physics').feature('solid1').set('rho', 2700);
model.component('component').physics('physics').feature('solid1').set('Cp_mat', 'userdef');
model.component('component').physics('physics').feature('solid1').set('Cp', 730);
model.component('component').physics('physics').create('outer_fluid_physics1', 'FluidHeatTransferModel', 3);
model.component('component').physics('physics').feature('outer_fluid_physics1').label('Outer Fluid Physics 1');
model.component('component').physics('physics').feature('outer_fluid_physics1').selection.named('geometry_outer_fluid_selection1');
model.component('component').physics('physics').feature('outer_fluid_physics1').set('u', {'0.116597' '0.116597' '-0.164893'});
model.component('component').physics('physics').feature('outer_fluid_physics1').set('k_mat', 'userdef');
model.component('component').physics('physics').feature('outer_fluid_physics1').set('k', {'750.145060' '-249.854940' '353.348245' '-249.854940' '750.145060' '353.348245' '353.348245' '353.348245' '500.290120'});
model.component('component').physics('physics').feature('outer_fluid_physics1').set('rho_mat', 'userdef');
model.component('component').physics('physics').feature('outer_fluid_physics1').set('rho', 999.7587686101307);
model.component('component').physics('physics').feature('outer_fluid_physics1').set('Cp_mat', 'userdef');
model.component('component').physics('physics').feature('outer_fluid_physics1').set('Cp', 4189.895315737093);
model.component('component').physics('physics').feature('outer_fluid_physics1').set('gamma_mat', 'userdef');
model.component('component').physics('physics').feature('outer_fluid_physics1').set('gamma', 1);
model.component('component').physics('physics').create('pipe_wall_physics1', 'SolidHeatTransferModel', 3);
model.component('component').physics('physics').feature('pipe_wall_physics1').label('Pipe Wall Physics 1');
model.component('component').physics('physics').feature('pipe_wall_physics1').selection.named('geometry_pipe_wall_selection1');
model.component('component').physics('physics').feature('pipe_wall_physics1').set('k_mat', 'userdef');
model.component('component').physics('physics').feature('pipe_wall_physics1').set('k', {'0.100000' '0.000000' '0.000000' '0.000000' '0.100000' '0.000000' '0.000000' '0.000000' '0.100000'});
model.component('component').physics('physics').feature('pipe_wall_physics1').set('rho_mat', 'userdef');
model.component('component').physics('physics').feature('pipe_wall_physics1').set('rho', 900);
model.component('component').physics('physics').feature('pipe_wall_physics1').set('Cp_mat', 'userdef');
model.component('component').physics('physics').feature('pipe_wall_physics1').set('Cp', 1900);

model.label('temp.mph');

model.component('component').cpl.create('intop1', 'Integration');
model.component('component').cpl('intop1').set('axisym', true);
model.component('component').cpl('intop1').selection.geom('geometry', 2);
model.component('component').cpl('intop1').selection.named('geometry_borehole_wall_selection1');

out = model;

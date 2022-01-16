%% Controlador 1
sim('Controlador1.slx');


training = [sonar1.signals.values(borrar:end),sonar2.signals.values(borrar:end),sonar3.signals.values(borrar:end),sonar4.signals.values(borrar:end),w.signals.values(borrar:end),v.signals.values(borrar:end)];


save datos_entrenamiento training

%% Controlador 2

sim('Controlador2.slx');



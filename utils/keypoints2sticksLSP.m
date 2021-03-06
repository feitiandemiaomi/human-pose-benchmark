function sticks = keypoints2sticksLSP(keypoints)
    sticks = zeros(2,20,size(keypoints,3));
    sticks(:,1:2,:) = keypoints(:,1:2,:);	       % R Lower leg (R ankle - R knee)	
    sticks(:,3:4,:) = keypoints(:,2:3,:);	       % R Upper leg (R knee - R hip)
    sticks(:,5:6,:) = keypoints(:,4:5,:);	       % L Upper leg (L hip - L knee) 	
    sticks(:,7:8,:) = keypoints(:,5:6,:);	       % L Lower leg (L knee - L ankle)
    sticks(:,9:10,:) = keypoints(:,7:8,:);         % R Forearm (R wirst - R elbow)
    sticks(:,11:12,:) = keypoints(:,8:9,:);        % R Upper arm (R elbow - R shoulder)
    sticks(:,13:14,:) = keypoints(:,10:11,:);      % L Upper arm (L shoulder - L elbow)
    sticks(:,15:16,:) = keypoints(:,11:12,:);      % L Forearm (L elbow - L wrist)
    sticks(:,17:18,:) = keypoints(:,13:14,:);      % Head (neck - head top)
    sticks(:,19,:) = mean(keypoints(:,3:4,:),2);   % Hip (R hip - L hip)
    sticks(:,20,:) = mean(keypoints(:,9:10,:),2);  % Shoulder (R shoulder - L shoulder)
end 
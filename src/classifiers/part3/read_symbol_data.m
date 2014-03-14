%{
    DPRL CROHME 2012
    Copyright (c) 2012-2014 Lei Hu, David Stalnaker, Richard Zanibbi

    This file is part of DPRL CROHME 2012.

    DPRL CROHME 2012 is free software: 
    you can redistribute it and/or modify it under the terms of the GNU 
    General Public License as published by the Free Software Foundation, 
    either version 3 of the License, or (at your option) any later version.

    DPRL CROHME 2012 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with DPRL CROHME 2012.  
    If not, see <http://www.gnu.org/licenses/>.

    Contact:
        - Lei Hu: lei.hu@rit.edu
        - David Stalnaker: david.stalnaker@gmail.com
        - Richard Zanibbi: rlaz@cs.rit.edu 
%}

%This function is used to read the individual symbol's data.

function CD = read_symbol_data(A) % A is the name of input file

B = {};
fid = fopen(A);
tline = fgetl(fid);
total_stroke_number = sscanf(tline, '%d');

for ii =1:total_stroke_number
    
    tline = fgetl(fid);
     B{ii}.num = sscanf(tline, '%d');
   
    for qii = 1: B{ii}.num
        tline = fgetl(fid);
        c = (sscanf(tline,'%f'))';
        B{ii}.index(qii,1) = c(1);
        B{ii}.index(qii,2) = c(2);
    end        
end

fclose(fid);

CD = B;

end
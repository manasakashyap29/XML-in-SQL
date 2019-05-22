COPY(SELECT xmlelement(name warehouses,xmlagg(overall_query)) 
     FROM ( SELECT xmlelement( name warehouse, 
	xmlforest(w1.w_id as id,w1.w_name as name,
        xmlconcat(xmlforest(w1.w_street as street, w1.w_city as city,w1.w_country as country)) AS address, 
	xmlagg(xmlelement(name item, xmlforest(i1.i_id as id,i1.i_im_id as im_id,i1.i_name as name,i1.i_price as price,s1.s_qty as qty))) AS items))  
        AS overall_query 
        FROM warehouse w1,item i1,stock s1  WHERE i1.i_id = s1.i_id AND w1.w_id = s1.w_id GROUP BY w1.w_id ORDER BY w1.w_id ) AS warehouses)
 to '/home/cs4221/Downloads/project3_q1.xml';


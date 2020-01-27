--CREATE TABLE PRODUCT 
--   (	
--   	ID BIGINT NOT NULL PRIMARY KEY, 
--	NAME VARCHAR(100) NOT NULL, 
--	BRAND VARCHAR(100) DEFAULT NULL, 
--	TYPE VARCHAR(50) DEFAULT NULL,
--  COLOR VARCHAR(8) DEFAULT NULL, 
--	PRICE DOUBLE PRECISION  DEFAULT NULL,
--	warranty_years DOUBLE PRECISION  DEFAULT NULL,
--	AVAILABLE BOOLEAN DEFAULT NULL,
--	DESCRIPTION VARCHAR(16000) DEFAULT NULL,
--	JSON JSONB NOT NULL);

--CREATE TABLE PRODUCT 
--   (	
--   	ID BIGINT NOT NULL PRIMARY KEY, 
--	NAME VARCHAR(100) NOT NULL, 
--	BRAND VARCHAR(100) DEFAULT NULL, 
--	TYPE VARCHAR(50)[] DEFAULT NULL,
--  COLOR VARCHAR(8) DEFAULT NULL, 
--	PRICE DOUBLE PRECISION  DEFAULT NULL,
--	warranty_years DOUBLE PRECISION  DEFAULT NULL,
--	AVAILABLE BOOLEAN DEFAULT NULL,
--	DESCRIPTION VARCHAR(16000) DEFAULT NULL,
--	JSON JSONB NOT NULL);

\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

-- Table: public.product

-- DROP TABLE public.product;

CREATE TABLE public.product
(
  id bigint NOT NULL,
  name character varying(100) NOT NULL,
  brand character varying(100) DEFAULT NULL::character varying,
  type character varying(50) DEFAULT NULL::character varying,
  color character varying(8) DEFAULT NULL::character varying,
  price double precision,
  warranty_years double precision,
  available boolean,
  description character varying(16000) DEFAULT NULL::character varying,
  json jsonb NOT NULL,
  CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.product
  OWNER TO "user";
  
-- Index: public.jsonb_product_idx

-- DROP INDEX public.jsonb_product_idx;

CREATE INDEX jsonb_product_idx
  ON public.product
  USING gin
  (json);
  
	
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
ORIGINAIS:
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\

--{ "id" : 1, "name" : "AC3166 Phone", "brand" : "ACME141", "type" : ["phone"], "price" : 200, "warranty_years" : 1, "available" : true, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":1,
   "name":"AC3166 Phone",
   "brand":"ACME141",
   "type":["phone"],
   "price":200,
   "warranty_years":1,
   "available":true,
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 2, "name" : "AC729691 Phone", "brand" : "ACME", "type" : ["phone"], "price" : 320, "warranty_years" : 1, "available" : false, "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":2,
   "name":"AC729691 Phone",
   "brand":"ACME",
   "type":["phone"],
   "price":320,
   "warranty_years":1,
   "available":false,
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 3, "name" : "AC312956 Series Charger", "type" : [ "accessory", "charger" ], "price" : 19, "warranty_years" : 0.25, "for" : [ "ac3", "ac7", "ac9" ], "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":3,
   "name":"AC312956 Series Charger",
   "type":[
      "accessory",
      "charger"
   ],
   "price":19,
   "warranty_years":0.25,
   "for":[
      "ac3",
      "ac7",
      "ac9"
   ],
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 4, "name" : "AC32745 Case Green", "type" : [ "accessory", "case" ], "color" : "green", "price" : 12, "warranty_years" : 0, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":4,
   "name":"AC32745 Case Green",
   "type":[
      "accessory",
      "case"
   ],
   "color":"green",
   "price":12,
   "warranty_years":0,
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 5, "name" : "AC322336 Case Black", "type" : [ "accessory", "case" ], "color" : "black", "price" : 12.5, "warranty_years" : 0.25, "available" : false, "for" : "ac3", "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":5,
   "name":"AC322336 Case Black",
   "type":[
      "accessory",
      "case"
   ],
   "color":"black",
   "price":12.5,
   "warranty_years":0.25,
   "available":false,
   "for":"ac3",
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 6, "name" : "AC3 Case Red", "type" : [ "accessory", "case" ], "color" : "red", "price" : 12, "warranty_years" : 0.25, "available" : true, "for" : "ac3" }
{
   "id":6,
   "name":"AC3 Case Red",
   "type":[
      "accessory",
      "case"
   ],
   "color":"red",
   "price":12,
   "warranty_years":0.25,
   "available":true,
   "for":"ac3"
}

--{ "id" : 7, "name" : "Phone Service Basic Plan31650", "type" : ["service2968"], "monthly_price" : 40, "limits" : { "voice" : { "units" : "minutes", "n" : 400, "over_rate" : 0.05 }, "data" : { "units" : "gigabytes", "n" : 20, "over_rate" : 1 }, "sms" : { "units" : "texts sent", "n" : 100, "over_rate" : 0.001 } }, "term_years" : 2 }
{
   "id":7,
   "name":"Phone Service Basic Plan31650",
   "type":["service2968"],
   "monthly_price":40,
   "limits":{
      "voice":{
         "units":"minutes",
         "n":400,
         "over_rate":0.05
      },
      "data":{
         "units":"gigabytes",
         "n":20,
         "over_rate":1
      },
      "sms":{
         "units":"texts sent",
         "n":100,
         "over_rate":0.001
      }
   },
   "term_years":2
}

--{ "id" : 8, "name" : "Phone Service Core Plan", "type" : ["service8780"], "monthly_price" : 60, "limits" : { "voice" : { "units" : "minutes", "n" : 1000, "over_rate" : 0.05 }, "data" : { "n" : "unlimited", "over_rate" : 0 }, "sms" : { "n" : "unlimited", "over_rate" : 0 } }, "term_years" : 1, "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."}
{
   "id":8,
   "name":"Phone Service Core Plan",
   "type":["service8780"],
   "monthly_price":60,
   "limits":{
      "voice":{
         "units":"minutes",
         "n":1000,
         "over_rate":0.05
      },
      "data":{
         "n":"unlimited",
         "over_rate":0
      },
      "sms":{
         "n":"unlimited",
         "over_rate":0
      }
   },
   "term_years":1,
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}

--{ "id" : 9, "name" : "Phone Service Family Plan", "type" : ["service"], "monthly_price" : 90, "limits" : { "voice" : { "units" : "minutes", "n" : 1200, "over_rate" : 0.05 }, "data" : { "n" : "unlimited", "over_rate" : 0 }, "sms" : { "n" : "unlimited", "over_rate" : 0 } }, "sales_tax" : true, "term_years" : 2 }
{
   "id":9,
   "name":"Phone Service Family Plan",
   "type":["service"],
   "monthly_price":90,
   "limits":{
      "voice":{
         "units":"minutes",
         "n":1200,
         "over_rate":0.05
      },
      "data":{
         "n":"unlimited",
         "over_rate":0
      },
      "sms":{
         "n":"unlimited",
         "over_rate":0
      }
   },
   "sales_tax":true,
   "term_years":2
}

--{ "id" : 10, "name" : "Cable TV Basic Service Package", "type" : ["tv"], "monthly_price" : 50, "term_years" : 2, "cancel_penalty" : 25, "sales_tax" : true, "additional_tarriffs" : [ { "kind" : "federal tarriff", "amount" : { "percent_of_service" : 0.06 } }, { "kind" : "misc tarriff", "amount" : 2.25 } ], "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus." }
{
   "id":10,
   "name":"Cable TV Basic Service Package",
   "type":["tv"],
   "monthly_price":50,
   "term_years":2,
   "cancel_penalty":25,
   "sales_tax":true,
   "additional_tarriffs":[
      {
         "kind":"federal tarriff",
         "amount":{
            "percent_of_service":0.06
         }
      },
      {
         "kind":"misc tarriff",
         "amount":2.25
      }
   ],
   "description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget elit ut nulla tempor viverra vel eu nulla. Sed luctus porttitor urna, ac dapibus velit fringilla et. Donec iaculis, dolor a vehicula dictum, augue neque suscipit augue, nec mollis massa neque in libero. Donec sed dapibus magna. Pellentesque at condimentum dolor. In nunc nibh, dignissim in risus a, blandit tincidunt velit. Vestibulum rutrum tempus sem eget tempus. Mauris sollicitudin purus auctor dolor vestibulum, vitae pulvinar neque suscipit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus lacus turpis, vulputate at adipiscing viverra, ultricies at lectus. Pellentesque ut porta leo, vel eleifend neque. Nunc sagittis metus at ante pellentesque, ut condimentum libero semper. In hac habitasse platea dictumst. In dapibus posuere posuere. Fusce vulputate augue eget tellus molestie, vitae egestas ante malesuada. Phasellus nunc mi, faucibus at elementum pharetra, aliquet a enim. In purus est, vulputate in nibh quis, faucibus dapibus magna. In accumsan libero velit, eu accumsan sem commodo id. In fringilla tempor augue, et feugiat erat convallis et. Sed aliquet eget ipsum eu vestibulum.Curabitur blandit leo nec condimentum semper. Mauris lectus sapien, rutrum a tincidunt id, euismod ac elit. Mauris suscipit et arcu et auctor. Quisque mollis magna vel mi viverra rutrum. Nulla non pretium magna. Cras sed tortor non tellus rutrum gravida eu at odio. Aliquam cursus fermentum erat, nec ullamcorper sem gravida sit amet. Donec viverra, erat vel ornare pulvinar, est ipsum accumsan massa, eu tristique lorem ante nec tortor. Sed suscipit iaculis faucibus. Maecenas a suscipit ligula, vitae faucibus turpis.Cras sed tellus auctor, tempor leo eu, molestie leo. Suspendisse ipsum tellus, egestas et ultricies eu, tempus a arcu. Cras laoreet, est dapibus consequat varius, nisi nisi placerat leo, et dictum ante tortor vitae est. Duis eu urna ac felis ullamcorper rutrum. Quisque iaculis, enim eget sodales vehicula, magna orci dignissim eros, nec volutpat massa urna in elit. In interdum pellentesque risus, feugiat pulvinar odio eleifend sit amet. Quisque congue libero quis dolor faucibus, a mollis nisl tempus."
}
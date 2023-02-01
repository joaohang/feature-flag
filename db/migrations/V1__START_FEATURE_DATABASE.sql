CREATE TABLE public.features(
  id serial PRIMARY KEY,
  name VARCHAR (50) UNIQUE NOT NULL,
  description VARCHAR(50),
  created_at TIMESTAMP NOT NULL
);

CREATE TABLE public.features_clients(
  feature_id integer not null,
  client_id VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY(feature_id, client_id),
  CONSTRAINT fk_feature_id FOREIGN KEY (feature_id) 
  REFERENCES public.features (id)
);


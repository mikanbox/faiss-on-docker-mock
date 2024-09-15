from langchain_aws import BedrockEmbeddings
from langchain_community.vectorstores import FAISS

embedding = BedrockEmbeddings(model_id="amazon.titan-embed-text-v1")

vectorstore = FAISS.from_texts(
    ["ありがとう"], embedding
)
# save
vectorstore.save_local("./vectorstore")

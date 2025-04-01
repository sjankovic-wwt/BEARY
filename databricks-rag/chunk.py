## Save FAQ model
faq_input = {"input": ["How many days do I have to enroll in my benefits?"]}
faq_output = {"output": ["You have 31 days from the date of hire to enroll in your benefits."]}

faq_input_2 = {"input": ["What are the health insurance options available?"]}

# set model registry to UC
mlflow.set_registry_uri("databricks-uc")
model_name = "rag2.default.faq_rag_demo_01"

# Define the model URI
model_uri = "models:/rag2.default.faq_rag_demo_01/1"

# Create a more comprehensive input example for signature inference
signature_input = {
    "input": [
        "How many days do I have to enroll in my benefits?",
        "What are the health insurance options available?"
    ]
}
signature_output = {
    "output": [
        "You have 31 days from the date of hire to enroll in your benefits.",
        "There are three health insurance options available: Basic, Standard, and Premium."
    ]
}

# Infer the signature with the comprehensive example
signature = infer_signature(signature_input, signature_output)

def model_as_code(chain, question):
    return chain.invoke(question)

# Log the model with the input example and signature
with mlflow.start_run(run_name="faq_run_2") as run:
    mlflow.pyfunc.log_model(
        artifact_path="chain",
        python_model=ChainModel(faq_chain),
        registered_model_name="rag2.default.faq_rag_demo_01",
        pip_requirements=[
            "mlflow==" + mlflow.__version__,
            "langchain==" + langchain.__version__,
            "databricks-vectorsearch",
        ],
        input_example=faq_input_2,
        signature=signature
    )
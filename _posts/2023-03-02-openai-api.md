---
layout: post
title: >
    [Tech] OpenAI ChatGPT API
---

OpenAI enabled their ChatGPT and Whisper(speech-to-text) API on March 1st, 2023. I deep dive into the API doc. Here are some notes.

**Models** 

There are a bunch of models available via the API. The well-known ChatGPT API is the `GPT-3.5-turbo`. It is by far the most capable model. Faster models may have good use cases in specific area and be more cost-effective. Fine-tuning is only open to a few models.

`Moderation` is a fine-tuned model that can detect whether text may be sensitive or unsafe. It addresses the ethical issues.


**Parameters**

`temperature` is the most important parameter. It controls randomness of the next token. As stated in the doc:
> It’s usually best to set a low temperature for tasks where the desired output is well-defined. Higher temperature may be useful for tasks where variety or creativity are desired, or if you'd like to generate a few variations for your end users or human experts to choose from.

Other key parameters: `max_tokens`, `top_p`, `frequency_penalty`, `presence_penalty`.

**Prompt design**

The prompt is the "programming language" for the models. Try to be specific and directly show examples.

**My comments**

There are many interesting use cases. Through this API, I can see both the multimodal and large language models. It is suprising to see the embedding, NLP tasks, fine-tuning, [classification](https://github.com/openai/openai-cookbook/blob/main/examples/Fine-tuned_classification.ipynb), and more. I can imagine a general-purpose ML model purely composed by OpenAI elements: numerical features as text, text, audio, video, whatever data format you have. Feed them into GPT, get the embeddings, or more directly, the desired labels. Labels may not even be important. When you ask the system, for example, what's the recommended movie, it will answer you in natural language. We don't need to go deep into the coding and mathematical abstractions. Everything exists in the form of human-understandable language/information. 

Model as a service may be the future of AI. A new skill is to interact with the model using natual language.
The key question is: is the model good enough? I feel the answer is confirmative and we will see exciting improvements in the near future.







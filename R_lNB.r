#!/usr/bin/env python
# coding: utf-8

# # Importing the dataset

# In[4]:


filename = "exregex.ipynb.csv"


# In[6]:


dataset = read.csv(filename)


# # Fitting Linear Regression to the dataset

# In[9]:


model = lm(formula = y ~ x,
               data = dataset)
               
 dataset


# # Summary analysis of the model              

# In[ ]:


summary(model)


# # Visualizing the Linear Regression results

# In[20]:


library(ggplot2)
p2 <- ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
ggsave('r_combine.png', p2, 'png', width = 4, height = 4)


# In[21]:


p2


# In[17]:


library(ggplot2)
p1 <- ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
ggsave('r_orig.png', p1, 'png', width = 4, height = 4)


# In[18]:


p1


# In[ ]:





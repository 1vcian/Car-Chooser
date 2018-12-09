f=open('cabrio.json','r')
l=[]
o=[]
for elem in f:
        e=elem.strip('{').split()
        l.append(e)
for elem in l:
        if ('fuel_type' in elem[0] or 'seat' in elem[0]):
                o.append(elem)

	
due=[]
quattro=[]
cinque=[]
sette=[]
otto=[]
for i in range(0,len(o),4):
        if ('2' in o[i][1]):
                if (o[i+1][1] not in due):
                        due.append(o[i+1][1])
                if (o[i+2][1] not in due):
                        due.append(o[i+2][1])
                if (o[i+3][1] not in due):
                        due.append(o[i+3][1])
        if ('4' in o[i][1]):
                if (o[i+1][1] not in quattro):
                        quattro.append(o[i+1][1])
                if (o[i+2][1] not in quattro):
                        quattro.append(o[i+2][1])
                if (o[i+3][1] not in quattro):
                        quattro.append(o[i+3][1])
        if ('5' in o[i][1]):
                if (o[i+1][1] not in cinque):
                       cinque.append(o[i+1][1])
                if (o[i+2][1] not in cinque):
                        cinque.append(o[i+2][1])
                if (o[i+3][1] not in cinque):
                        cinque.append(o[i+3][1])
        if ('7' in o[i][1]):
                if (o[i+1][1] not in sette):
                        sette.append(o[i+1][1])
                if (o[i+2][1] not in sette):
                        sette.append(o[i+2][1])
                if (o[i+3][1] not in sette):
                        sette.append(o[i+3][1])
        if ('8' in o[i][1]):
                if (o[i+1][1] not in otto):
                        otto.append(o[i+1][1])
                if (o[i+2][1] not in otto):
                        otto.append(o[i+2][1])
                if (o[i+3][1] not in otto):
                        otto.append(o[i+3][1])
print('due:',due)
print('quattro:',quattro)
print('cinque:',cinque)
print('sette:',sette)
print('otto:',otto)

                

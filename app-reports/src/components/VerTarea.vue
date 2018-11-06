<template>
<v-container v-if="tarea">
       <v-card color="white" height="100%">
            <v-flex pa-4 >
                <div class="headline text-xs-center text-uppercase font-weight-medium">{{tarea.titulo}}</div>
                <v-divider class="mar"></v-divider>
                <div v-html="tarea.descripcion"></div>
            </v-flex>
        </v-card>
</v-container>
</template>

<script>
import axios from 'axios';
import moment from 'moment';
export default {
    props: ['idTarea'],
    data(){
        return{
            moment: moment,
            tarea: null,
            colorP: null,
        }
    },
    created() {
        moment.locale('es')
        this.fetchTarea();
    },
    methods:{
        fetchTarea(){
            var self = this
            axios.get('/tarea/ver/' + self.idTarea, {
                headers: {
                    Authorization: 'Bearer ' + localStorage.getItem('token')
                }
            })
            .then(function(response){
                self.tarea = response.data
                console.log('tarea:', self.tarea)
            }).catch(function (err) {
                console.log(err.response)
            })
        }
    },
}
</script>
<style>
.mar{
    margin-top: 0.5em;
    margin-bottom: 0.5em;
}
</style>

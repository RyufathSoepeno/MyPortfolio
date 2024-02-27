.class Lb0/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb0/c0;->H(Ls0/i;Ls0/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lb0/i;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ls0/j$d;

.field final synthetic h:Lb0/c0;


# direct methods
.method constructor <init>(Lb0/c0;Lb0/i;Ljava/lang/String;Ls0/j$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb0/c0$b;->h:Lb0/c0;

    iput-object p2, p0, Lb0/c0$b;->e:Lb0/i;

    iput-object p3, p0, Lb0/c0$b;->f:Ljava/lang/String;

    iput-object p4, p0, Lb0/c0$b;->g:Ls0/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lb0/c0;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lb0/c0$b;->e:Lb0/i;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lb0/c0$b;->h:Lb0/c0;

    invoke-static {v2, v1}, Lb0/c0;->m(Lb0/c0;Lb0/i;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_5f

    :cond_e
    :try_start_e
    sget v1, Lb0/c0;->g:I

    invoke-static {v1}, Lb0/r;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Sqflite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb0/c0$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v1, p0, Lb0/c0$b;->f:Ljava/lang/String;

    invoke-static {v1}, Lb0/i;->n(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_34
    .catchall {:try_start_e .. :try_end_33} :catchall_5f

    goto :goto_57

    :catch_34
    move-exception v1

    :try_start_35
    const-string v2, "Sqflite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while closing database "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb0/c0;->n()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_5f

    iget-object v0, p0, Lb0/c0$b;->g:Ls0/j$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    return-void

    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

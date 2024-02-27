.class Landroidx/activity/result/d$a;
.super Landroidx/activity/result/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/d;->i(Ljava/lang/String;Lb/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/c<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lb/a;

.field final synthetic c:Landroidx/activity/result/d;


# direct methods
.method constructor <init>(Landroidx/activity/result/d;Ljava/lang/String;Lb/a;)V
    .registers 4

    iput-object p1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iput-object p2, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/d$a;->b:Lb/a;

    invoke-direct {p0}, Landroidx/activity/result/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Landroidx/core/app/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v0, v0, Landroidx/activity/result/d;->c:Ljava/util/Map;

    iget-object v1, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v1, v1, Landroidx/activity/result/d;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_17
    iget-object v1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/activity/result/d$a;->b:Lb/a;

    invoke-virtual {v1, v0, v2, p1, p2}, Landroidx/activity/result/d;->f(ILb/a;Ljava/lang/Object;Landroidx/core/app/e;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    iget-object p2, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object p2, p2, Landroidx/activity/result/d;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_2e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/activity/result/d$a;->b:Lb/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v1, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/d;->k(Ljava/lang/String;)V

    return-void
.end method

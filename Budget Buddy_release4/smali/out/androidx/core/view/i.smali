.class public Landroidx/core/view/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/view/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/view/x;",
            "Landroidx/core/view/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/i;->c:Ljava/util/Map;

    iput-object p1, p0, Landroidx/core/view/i;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/view/x;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/core/view/i;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public b(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/x;

    invoke-interface {v1, p1, p2}, Landroidx/core/view/x;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public c(Landroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/x;

    invoke-interface {v1, p1}, Landroidx/core/view/x;->b(Landroid/view/Menu;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/x;

    invoke-interface {v1, p1}, Landroidx/core/view/x;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/x;

    invoke-interface {v1, p1}, Landroidx/core/view/x;->d(Landroid/view/Menu;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public f(Landroidx/core/view/x;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/view/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/i$a;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroidx/core/view/i$a;->a()V

    :cond_12
    iget-object p1, p0, Landroidx/core/view/i;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

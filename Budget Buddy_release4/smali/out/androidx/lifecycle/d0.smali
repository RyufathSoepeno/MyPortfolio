.class public Landroidx/lifecycle/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/z;

    invoke-virtual {v1}, Landroidx/lifecycle/z;->a()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method final b(Ljava/lang/String;)Landroidx/lifecycle/z;
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/z;

    return-object p1
.end method

.method c()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final d(Ljava/lang/String;Landroidx/lifecycle/z;)V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/d0;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/z;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/lifecycle/z;->d()V

    :cond_d
    return-void
.end method

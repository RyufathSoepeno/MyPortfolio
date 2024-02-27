.class Landroidx/fragment/app/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/x;->m(Landroidx/fragment/app/p;Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/b<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/x;


# direct methods
.method constructor <init>(Landroidx/fragment/app/x;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/x$a;->a:Landroidx/fragment/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/x$a;->b(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    goto :goto_32

    :cond_31
    const/4 v4, -0x1

    :goto_32
    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_37
    iget-object v1, p0, Landroidx/fragment/app/x$a;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/x$k;

    const-string v2, "FragmentManager"

    if-nez v1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No permissions were requested for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    iget-object v3, v1, Landroidx/fragment/app/x$k;->e:Ljava/lang/String;

    iget v1, v1, Landroidx/fragment/app/x$k;->f:I

    iget-object v4, p0, Landroidx/fragment/app/x$a;->a:Landroidx/fragment/app/x;

    invoke-static {v4}, Landroidx/fragment/app/x;->h(Landroidx/fragment/app/x;)Landroidx/fragment/app/f0;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f0;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_78

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission request result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_78
    invoke-virtual {v4, v1, v0, p1}, Landroidx/fragment/app/Fragment;->g1(I[Ljava/lang/String;[I)V

    return-void
.end method

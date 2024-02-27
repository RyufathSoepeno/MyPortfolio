.class public final Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0$b;


# instance fields
.field private final a:[Lw/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lw/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw/f<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "initializers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->a:[Lw/f;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/b0;->a(Landroidx/lifecycle/a0$b;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lw/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw/b;->a:[Lw/f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_10
    if-ge v3, v1, :cond_31

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lw/f;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual {v5}, Lw/f;->b()Lj1/l;

    move-result-object v4

    invoke-interface {v4, p2}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/lifecycle/z;

    if-eqz v5, :cond_2d

    check-cast v4, Landroidx/lifecycle/z;

    goto :goto_2e

    :cond_2d
    move-object v4, v2

    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_31
    if-eqz v4, :cond_34

    return-object v4

    :cond_34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No initializer set for given class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

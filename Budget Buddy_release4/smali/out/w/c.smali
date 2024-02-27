.class public final Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ln1/c;Lj1/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ln1/c<",
            "TT;>;",
            "Lj1/l<",
            "-",
            "Lw/a;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw/c;->a:Ljava/util/List;

    new-instance v1, Lw/f;

    invoke-static {p1}, Li1/a;->a(Ln1/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lw/f;-><init>(Ljava/lang/Class;Lj1/l;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroidx/lifecycle/a0$b;
    .registers 4

    new-instance v0, Lw/b;

    iget-object v1, p0, Lw/c;->a:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lw/f;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    check-cast v1, [Lw/f;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lw/f;

    invoke-direct {v0, v1}, Lw/b;-><init>([Lw/f;)V

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public abstract Ls1/o;
.super Lkotlinx/coroutines/internal/o;
.source "SourceFile"

# interfaces
.implements Ls1/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/o;",
        "Ls1/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ls1/o;->y()Lkotlinx/coroutines/internal/b0;

    move-result-object v0

    return-object v0
.end method

.method public y()Lkotlinx/coroutines/internal/b0;
    .registers 2

    sget-object v0, Ls1/b;->b:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public abstract z(Ls1/j;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/j<",
            "*>;)V"
        }
    .end annotation
.end method

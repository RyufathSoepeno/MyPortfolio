.class abstract Landroidx/lifecycle/LiveData$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:I

.field final synthetic d:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$c;->d:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/LiveData$c;->c:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$c;->a:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method h(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$c;->b:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$c;->b:Z

    iget-object v0, p0, Landroidx/lifecycle/LiveData$c;->d:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->b(I)V

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$c;->b:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroidx/lifecycle/LiveData$c;->d:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$c;)V

    :cond_1a
    return-void
.end method

.method i()V
    .registers 1

    return-void
.end method

.method j(Landroidx/lifecycle/i;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method abstract k()Z
.end method

.class public final Lq1/x1;
.super Lkotlinx/coroutines/internal/m;
.source "SourceFile"

# interfaces
.implements Lq1/h1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/m;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h()Lq1/x1;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lkotlinx/coroutines/internal/o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

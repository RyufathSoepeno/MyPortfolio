.class public final Lq1/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/h1;


# instance fields
.field private final e:Lq1/x1;


# direct methods
.method public constructor <init>(Lq1/x1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/g1;->e:Lq1/x1;

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lq1/x1;
    .registers 2

    iget-object v0, p0, Lq1/g1;->e:Lq1/x1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lq1/p1;
.super Lq1/t1;
.source "SourceFile"

# interfaces
.implements Lq1/u;


# instance fields
.field private final f:Z


# direct methods
.method public constructor <init>(Lq1/m1;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lq1/t1;-><init>(Z)V

    invoke-virtual {p0, p1}, Lq1/t1;->T(Lq1/m1;)V

    invoke-direct {p0}, Lq1/p1;->u0()Z

    move-result p1

    iput-boolean p1, p0, Lq1/p1;->f:Z

    return-void
.end method

.method private final u0()Z
    .registers 5

    invoke-virtual {p0}, Lq1/t1;->P()Lq1/r;

    move-result-object v0

    instance-of v1, v0, Lq1/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lq1/s;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-nez v0, :cond_11

    move-object v0, v2

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    invoke-virtual {v0}, Lq1/t1;->M()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    invoke-virtual {v0}, Lq1/t1;->P()Lq1/r;

    move-result-object v0

    instance-of v3, v0, Lq1/s;

    if-eqz v3, :cond_2c

    check-cast v0, Lq1/s;

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    if-nez v0, :cond_31

    move-object v0, v2

    goto :goto_35

    :cond_31
    invoke-virtual {v0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    :goto_35
    if-nez v0, :cond_19

    return v1
.end method


# virtual methods
.method public M()Z
    .registers 2

    iget-boolean v0, p0, Lq1/p1;->f:Z

    return v0
.end method

.method public N()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.class public final Lq1/s;
.super Lq1/o1;
.source "SourceFile"

# interfaces
.implements Lq1/r;


# instance fields
.field public final i:Lq1/t;


# direct methods
.method public constructor <init>(Lq1/t;)V
    .registers 2

    invoke-direct {p0}, Lq1/o1;-><init>()V

    iput-object p1, p0, Lq1/s;->i:Lq1/t;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Throwable;)Z
    .registers 3

    invoke-virtual {p0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq1/t1;->E(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lq1/m1;
    .registers 2

    invoke-virtual {p0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/s;->y(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lq1/s;->i:Lq1/t;

    invoke-virtual {p0}, Lq1/s1;->z()Lq1/t1;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/t;->m(Lq1/a2;)V

    return-void
.end method

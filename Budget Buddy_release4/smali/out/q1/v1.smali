.class final Lq1/v1;
.super Lq1/b2;
.source "SourceFile"


# instance fields
.field private final g:Lc1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/d<",
            "La1/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/g;Lj1/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g;",
            "Lj1/p<",
            "-",
            "Lq1/h0;",
            "-",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lq1/b2;-><init>(Lc1/g;Z)V

    invoke-static {p2, p0, p0}, Ld1/b;->a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p1

    iput-object p1, p0, Lq1/v1;->g:Lc1/d;

    return-void
.end method


# virtual methods
.method protected f0()V
    .registers 2

    iget-object v0, p0, Lq1/v1;->g:Lc1/d;

    invoke-static {v0, p0}, Lv1/a;->b(Lc1/d;Lc1/d;)V

    return-void
.end method

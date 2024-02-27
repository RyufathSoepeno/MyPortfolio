.class final Lq1/t1$a;
.super Lq1/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final i:Lq1/t1;

.field private final j:Lq1/t1$b;

.field private final k:Lq1/s;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq1/t1;Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lq1/s1;-><init>()V

    iput-object p1, p0, Lq1/t1$a;->i:Lq1/t1;

    iput-object p2, p0, Lq1/t1$a;->j:Lq1/t1$b;

    iput-object p3, p0, Lq1/t1$a;->k:Lq1/s;

    iput-object p4, p0, Lq1/t1$a;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq1/t1$a;->y(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lq1/t1$a;->i:Lq1/t1;

    iget-object v0, p0, Lq1/t1$a;->j:Lq1/t1$b;

    iget-object v1, p0, Lq1/t1$a;->k:Lq1/s;

    iget-object v2, p0, Lq1/t1$a;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lq1/t1;->v(Lq1/t1;Lq1/t1$b;Lq1/s;Ljava/lang/Object;)V

    return-void
.end method

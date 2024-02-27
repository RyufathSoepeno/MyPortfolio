.class public Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/p<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/p;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    return-void
.end method

.method public static b(Landroidx/fragment/app/p;)Landroidx/fragment/app/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p<",
            "*>;)",
            "Landroidx/fragment/app/n;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/n;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/util/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/p;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v1, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/x;->m(Landroidx/fragment/app/p;Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->y()V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->B(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->C()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->E()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->N()V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->R()V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->S()V

    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->U()V

    return-void
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->b0(Z)Z

    move-result v0

    return v0
.end method

.method public l()Landroidx/fragment/app/x;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    return-object v0
.end method

.method public m()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->i:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->w0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

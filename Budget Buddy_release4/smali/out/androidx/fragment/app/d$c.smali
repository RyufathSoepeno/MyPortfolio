.class Landroidx/fragment/app/d$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/d;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Landroidx/fragment/app/m0$e;

.field final synthetic e:Landroidx/fragment/app/d$k;

.field final synthetic f:Landroidx/fragment/app/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/d;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/m0$e;Landroidx/fragment/app/d$k;)V
    .registers 7

    iput-object p1, p0, Landroidx/fragment/app/d$c;->f:Landroidx/fragment/app/d;

    iput-object p2, p0, Landroidx/fragment/app/d$c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/d$c;->b:Landroid/view/View;

    iput-boolean p4, p0, Landroidx/fragment/app/d$c;->c:Z

    iput-object p5, p0, Landroidx/fragment/app/d$c;->d:Landroidx/fragment/app/m0$e;

    iput-object p6, p0, Landroidx/fragment/app/d$c;->e:Landroidx/fragment/app/d$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroidx/fragment/app/d$c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/d$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/d$c;->c:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/fragment/app/d$c;->d:Landroidx/fragment/app/m0$e;

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->e()Landroidx/fragment/app/m0$e$c;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/d$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m0$e$c;->a(Landroid/view/View;)V

    :cond_16
    iget-object p1, p0, Landroidx/fragment/app/d$c;->e:Landroidx/fragment/app/d$k;

    invoke-virtual {p1}, Landroidx/fragment/app/d$l;->a()V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animator from operation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/d$c;->d:Landroidx/fragment/app/m0$e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method

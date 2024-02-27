.class Landroidx/fragment/app/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/r;

.field private final b:Landroidx/fragment/app/f0;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/r;Landroidx/fragment/app/f0;Landroidx/fragment/app/Fragment;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/e0;->e:I

    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iput-object p3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/r;Landroidx/fragment/app/f0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/d0;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/e0;->e:I

    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iput-object p3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    iput v0, p3, Landroidx/fragment/app/Fragment;->w:I

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->t:Z

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->p:Z

    iget-object p2, p3, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_21

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object p2, p1

    :goto_22
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    iget-object p1, p4, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_2b

    goto :goto_30

    :cond_2b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_30
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/r;Landroidx/fragment/app/f0;Ljava/lang/ClassLoader;Landroidx/fragment/app/o;Landroidx/fragment/app/d0;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/e0;->e:I

    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {p5, p4, p3}, Landroidx/fragment/app/d0;->a(Landroidx/fragment/app/o;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x2

    invoke-static {p2}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p2

    if-eqz p2, :cond_30

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method private l(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_c
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-ne p1, v0, :cond_15

    return v1

    :cond_15
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_c

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private q()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->H1(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/r;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->s()V

    :cond_22
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-eqz v1, :cond_38

    if-nez v0, :cond_2f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2f
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_38
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_4e

    if-nez v0, :cond_45

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_45
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    const-string v2, "android:view_registry_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4e
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->O:Z

    if-nez v1, :cond_64

    if-nez v0, :cond_5b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_5b
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->O:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_64
    return-object v0
.end method


# virtual methods
.method a()V
    .registers 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->n1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method b()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->j(Landroidx/fragment/app/Fragment;)I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method c()V
    .registers 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const-string v4, "Fragment "

    const/4 v5, 0x0

    if-eqz v1, :cond_66

    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->n(Ljava/lang/String;)Landroidx/fragment/app/e0;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    iput-object v5, v1, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    goto :goto_97

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_97

    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->n(Ljava/lang/String;)Landroidx/fragment/app/e0;

    move-result-object v5

    if-eqz v5, :cond_73

    goto :goto_97

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    :goto_97
    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Landroidx/fragment/app/e0;->m()V

    :cond_9c
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->v0()Landroidx/fragment/app/p;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->y0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->g(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->o1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method d()I
    .registers 11

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-nez v1, :cond_9

    iget v0, v0, Landroidx/fragment/app/Fragment;->e:I

    return v0

    :cond_9
    iget v1, p0, Landroidx/fragment/app/e0;->e:I

    sget-object v2, Landroidx/fragment/app/e0$b;->a:[I

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->V:Landroidx/lifecycle/f$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_37

    if-eq v0, v6, :cond_33

    if-eq v0, v4, :cond_2e

    if-eq v0, v5, :cond_28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    :cond_28
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    :cond_2e
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    :cond_33
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_37
    :goto_37
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->s:Z

    if-eqz v8, :cond_67

    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v8, :cond_58

    iget v0, p0, Landroidx/fragment/app/e0;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_67

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_67

    :cond_58
    iget v8, p0, Landroidx/fragment/app/e0;->e:I

    if-ge v8, v5, :cond_63

    iget v0, v0, Landroidx/fragment/app/Fragment;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_67

    :cond_63
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_67
    :goto_67
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->p:Z

    if-nez v0, :cond_71

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_71
    const/4 v0, 0x0

    iget-object v8, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v8, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v9, :cond_84

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-static {v9, v0}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/m0;->l(Landroidx/fragment/app/e0;)Landroidx/fragment/app/m0$e$b;

    move-result-object v0

    :cond_84
    sget-object v8, Landroidx/fragment/app/m0$e$b;->f:Landroidx/fragment/app/m0$e$b;

    if-ne v0, v8, :cond_8e

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_ac

    :cond_8e
    sget-object v8, Landroidx/fragment/app/m0$e$b;->g:Landroidx/fragment/app/m0$e$b;

    if-ne v0, v8, :cond_97

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_ac

    :cond_97
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v4, :cond_ac

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->B0()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_ac

    :cond_a8
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_ac
    :goto_ac
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v2, :cond_ba

    iget v0, v0, Landroidx/fragment/app/Fragment;->e:I

    if-ge v0, v3, :cond_ba

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_ba
    invoke-static {v6}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    return v1
.end method

.method e()V
    .registers 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->T:Z

    if-nez v1, :cond_3e

    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/r;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->r1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_48

    :cond_3e
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->P1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/Fragment;->e:I

    :goto_48
    return-void
.end method

.method f()V
    .registers 8

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->s:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->x1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_38

    move-object v2, v4

    goto/16 :goto_c0

    :cond_38
    iget v4, v3, Landroidx/fragment/app/Fragment;->C:I

    if-eqz v4, :cond_c0

    const/4 v2, -0x1

    if-eq v4, v2, :cond_a2

    iget-object v2, v3, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v2}, Landroidx/fragment/app/x;->r0()Landroidx/fragment/app/l;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->C:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/l;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_98

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->u:Z

    if-eqz v4, :cond_58

    goto :goto_c0

    :cond_58
    :try_start_58
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->m0()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_58 .. :try_end_64} :catch_65

    goto :goto_67

    :catch_65
    const-string v0, "unknown"

    :goto_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->C:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    instance-of v3, v2, Landroidx/fragment/app/m;

    if-nez v3, :cond_c0

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v2}, Lu/d;->k(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    goto :goto_c0

    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    :goto_c0
    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v2, v3, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2, v4}, Landroidx/fragment/app/Fragment;->t1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    const/4 v3, 0x2

    if-eqz v0, :cond_173

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    sget v6, Lt/b;->a:I

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_e2

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->b()V

    :cond_e2
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v2, :cond_ef

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_ef
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/h0;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    goto :goto_10d

    :cond_101
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    new-instance v2, Landroidx/fragment/app/e0$a;

    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/e0$a;-><init>(Landroidx/fragment/app/e0;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_10d
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->K1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v5, v6, v4}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->X1(F)V

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_173

    if-nez v0, :cond_173

    iget-object v0, v2, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16b

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->U1(Landroid/view/View;)V

    invoke-static {v3}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v2

    if-eqz v2, :cond_16b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Saved focused view "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16b
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_173
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput v3, v0, Landroidx/fragment/app/Fragment;->e:I

    return-void
.end method

.method g()V
    .registers 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->B0()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->r:Z

    if-nez v5, :cond_40

    iget-object v5, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/f0;->B(Ljava/lang/String;Landroidx/fragment/app/d0;)Landroidx/fragment/app/d0;

    :cond_40
    if-nez v0, :cond_53

    iget-object v4, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v4}, Landroidx/fragment/app/f0;->p()Landroidx/fragment/app/a0;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/a0;->r(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_53

    :cond_51
    const/4 v4, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v4, 0x1

    :goto_54
    if-eqz v4, :cond_e0

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    instance-of v5, v4, Landroidx/lifecycle/e0;

    if-eqz v5, :cond_69

    iget-object v2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v2}, Landroidx/fragment/app/f0;->p()Landroidx/fragment/app/a0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/a0;->o()Z

    move-result v2

    goto :goto_7c

    :cond_69
    invoke-virtual {v4}, Landroidx/fragment/app/p;->g()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_7c

    invoke-virtual {v4}, Landroidx/fragment/app/p;->g()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v4

    xor-int/2addr v2, v4

    :cond_7c
    :goto_7c
    if-eqz v0, :cond_84

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v0, :cond_86

    :cond_84
    if-eqz v2, :cond_91

    :cond_86
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->p()Landroidx/fragment/app/a0;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/Fragment;)V

    :cond_91
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/r;->d(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a7
    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/e0;

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    goto :goto_a7

    :cond_cc
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v1, :cond_da

    iget-object v2, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/f0;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    :cond_da
    iget-object v0, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/f0;->s(Landroidx/fragment/app/e0;)V

    goto :goto_fa

    :cond_e0
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_f6

    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f6

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v1, :cond_f6

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    :cond_f6
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput v3, v0, Landroidx/fragment/app/Fragment;->e:I

    :goto_fa
    return-void
.end method

.method h()V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_2c

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2c
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->n(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/n;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->t:Z

    return-void
.end method

.method i()V
    .registers 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->w1()V

    iget-object v1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/r;->e(Landroidx/fragment/app/Fragment;Z)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/Fragment;->e:I

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->B0()Z

    move-result v1

    if-nez v1, :cond_43

    const/4 v4, 0x1

    :cond_43
    if-nez v4, :cond_53

    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->p()Landroidx/fragment/app/a0;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a0;->r(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_53
    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x0()V

    :cond_74
    return-void
.end method

.method j()V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->s:Z

    if-eqz v1, :cond_72

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v1, :cond_72

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->v:Z

    if-nez v0, :cond_72

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->x1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->t1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_72

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    sget v3, Lt/b;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v2, :cond_5d

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->K1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/fragment/app/Fragment;->e:I

    :cond_72
    return-void
.end method

.method k()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method m()V
    .registers 10

    iget-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_26

    invoke-static {v1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    :cond_26
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_28
    iput-boolean v3, p0, Landroidx/fragment/app/e0;->d:Z

    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->d()I

    move-result v5

    iget-object v6, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v7, v6, Landroidx/fragment/app/Fragment;->e:I

    const/4 v8, 0x3

    if-eq v5, v7, :cond_114

    if-le v5, v7, :cond_8b

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1ba

    goto/16 :goto_111

    :pswitch_3f
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->p()V

    goto/16 :goto_111

    :pswitch_44
    const/4 v4, 0x6

    iput v4, v6, Landroidx/fragment/app/Fragment;->e:I

    goto/16 :goto_111

    :pswitch_49
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->u()V

    goto/16 :goto_111

    :pswitch_4e
    iget-object v4, v6, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v4, :cond_6d

    iget-object v4, v6, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6d

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Landroidx/fragment/app/m0$e$c;->b(I)Landroidx/fragment/app/m0$e$c;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroidx/fragment/app/m0;->b(Landroidx/fragment/app/m0$e$c;Landroidx/fragment/app/e0;)V

    :cond_6d
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x4

    iput v5, v4, Landroidx/fragment/app/Fragment;->e:I

    goto/16 :goto_111

    :pswitch_74
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->a()V

    goto/16 :goto_111

    :pswitch_79
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()V

    goto/16 :goto_111

    :pswitch_81
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->e()V

    goto/16 :goto_111

    :pswitch_86
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->c()V

    goto/16 :goto_111

    :cond_8b
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1ce

    goto/16 :goto_111

    :pswitch_92
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->n()V

    goto/16 :goto_111

    :pswitch_97
    const/4 v4, 0x5

    iput v4, v6, Landroidx/fragment/app/Fragment;->e:I

    goto/16 :goto_111

    :pswitch_9c
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->v()V

    goto/16 :goto_111

    :pswitch_a1
    invoke-static {v8}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v4

    if-eqz v4, :cond_bd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v5, :cond_c7

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->r()V

    goto :goto_d2

    :cond_c7
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v5, :cond_d2

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-nez v4, :cond_d2

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->s()V

    :cond_d2
    :goto_d2
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v5, :cond_e7

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v5, :cond_e7

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/fragment/app/m0;->d(Landroidx/fragment/app/e0;)V

    :cond_e7
    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput v8, v4, Landroidx/fragment/app/Fragment;->e:I

    goto :goto_111

    :pswitch_ec
    iput-boolean v0, v6, Landroidx/fragment/app/Fragment;->t:Z

    iput v1, v6, Landroidx/fragment/app/Fragment;->e:I

    goto :goto_111

    :pswitch_f1
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->h()V

    iget-object v4, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput v3, v4, Landroidx/fragment/app/Fragment;->e:I

    goto :goto_111

    :pswitch_f9
    iget-boolean v4, v6, Landroidx/fragment/app/Fragment;->r:Z

    if-eqz v4, :cond_10a

    iget-object v4, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v5, v6, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/f0;->q(Ljava/lang/String;)Landroidx/fragment/app/d0;

    move-result-object v4

    if-nez v4, :cond_10a

    invoke-virtual {p0}, Landroidx/fragment/app/e0;->r()V

    :cond_10a
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->g()V

    goto :goto_111

    :pswitch_10e
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->i()V

    :goto_111
    const/4 v4, 0x1

    goto/16 :goto_2b

    :cond_114
    if-nez v4, :cond_176

    const/4 v1, -0x1

    if-ne v7, v1, :cond_176

    iget-boolean v1, v6, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v1, :cond_176

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->B0()Z

    move-result v1

    if-nez v1, :cond_176

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->r:Z

    if-nez v1, :cond_176

    invoke-static {v8}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_145

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_145
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->p()Landroidx/fragment/app/a0;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a0;->g(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/f0;->s(Landroidx/fragment/app/e0;)V

    invoke-static {v8}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_171

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initState called for fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_171
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->x0()V

    :cond_176
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->R:Z

    if-eqz v2, :cond_1b2

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v2, :cond_199

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v2, :cond_199

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v2, :cond_196

    invoke-virtual {v1, p0}, Landroidx/fragment/app/m0;->c(Landroidx/fragment/app/e0;)V

    goto :goto_199

    :cond_196
    invoke-virtual {v1, p0}, Landroidx/fragment/app/m0;->e(Landroidx/fragment/app/e0;)V

    :cond_199
    :goto_199
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v2, :cond_1a2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/x;->G0(Landroidx/fragment/app/Fragment;)V

    :cond_1a2
    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->R:Z

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->E:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->W0(Z)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->J()V
    :try_end_1b2
    .catchall {:try_start_28 .. :try_end_1b2} :catchall_1b5

    :cond_1b2
    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    return-void

    :catchall_1b5
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/e0;->d:Z

    throw v1

    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_79
        :pswitch_74
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch -0x1
        :pswitch_10e
        :pswitch_f9
        :pswitch_f1
        :pswitch_ec
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_92
    .end packed-switch
.end method

.method n()V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->C1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->f(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->n:I

    :cond_3f
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->O:Z

    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/Boolean;

    goto :goto_5c

    :cond_52
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->O:Z

    :goto_5c
    iget-object p1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->O:Z

    if-nez v0, :cond_64

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->N:Z

    :cond_64
    return-void
.end method

.method p()V
    .registers 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->a0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-direct {p0, v0}, Landroidx/fragment/app/e0;->l(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v3

    if-eqz v3, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Restoring focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4f

    const-string v0, "succeeded"

    goto :goto_51

    :cond_4f
    const-string v0, "failed"

    :goto_51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->U1(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->G1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/r;->i(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    return-void
.end method

.method r()V
    .registers 5

    new-instance v0, Landroidx/fragment/app/d0;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v2, v1, Landroidx/fragment/app/Fragment;->e:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_40

    iget-object v2, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    if-nez v2, :cond_40

    invoke-direct {p0}, Landroidx/fragment/app/e0;->q()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v2, :cond_44

    if-nez v1, :cond_27

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    :cond_27
    iget-object v1, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    const-string v3, "android:target_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->n:I

    if-eqz v1, :cond_44

    iget-object v2, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    const-string v3, "android:target_req_state"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_44

    :cond_40
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/d0;->q:Landroid/os/Bundle;

    :cond_44
    :goto_44
    iget-object v1, p0, Landroidx/fragment/app/e0;->b:Landroidx/fragment/app/f0;

    iget-object v2, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/f0;->B(Ljava/lang/String;Landroidx/fragment/app/d0;)Landroidx/fragment/app/d0;

    return-void
.end method

.method s()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_48

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    :cond_48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k0;->f(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    :cond_5e
    return-void
.end method

.method t(I)V
    .registers 2

    iput p1, p0, Landroidx/fragment/app/e0;->e:I

    return-void
.end method

.method u()V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->I1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->k(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method v()V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->J1()V

    iget-object v0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->l(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

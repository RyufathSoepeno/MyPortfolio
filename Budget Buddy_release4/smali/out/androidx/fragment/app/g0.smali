.class public abstract Landroidx/fragment/app/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/g0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/o;

.field private final b:Ljava/lang/ClassLoader;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/g0$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Z

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/o;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->r:Z

    iput-object p1, p0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/o;

    iput-object p2, p0, Landroidx/fragment/app/g0;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/g0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method c(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;
    .registers 4

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/g0;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/g0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method e(Landroidx/fragment/app/g0$a;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/g0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/g0;->d:I

    iput v0, p1, Landroidx/fragment/app/g0$a;->d:I

    iget v0, p0, Landroidx/fragment/app/g0;->e:I

    iput v0, p1, Landroidx/fragment/app/g0$a;->e:I

    iget v0, p0, Landroidx/fragment/app/g0;->f:I

    iput v0, p1, Landroidx/fragment/app/g0$a;->f:I

    iget v0, p0, Landroidx/fragment/app/g0;->g:I

    iput v0, p1, Landroidx/fragment/app/g0$a;->g:I

    return-void
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public j()Landroidx/fragment/app/g0;
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/g0;->i:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/g0;->j:Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->U:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {p2, v0}, Lu/d;->h(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_c2

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    :cond_27
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_5f

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    if-eqz v2, :cond_5d

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_5d

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    :goto_5d
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    :cond_5f
    if-eqz p1, :cond_b9

    const/4 v2, -0x1

    if-eq p1, v2, :cond_95

    iget p3, p2, Landroidx/fragment/app/Fragment;->B:I

    if-eqz p3, :cond_90

    if-ne p3, p1, :cond_6b

    goto :goto_90

    :cond_6b
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->B:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_90
    :goto_90
    iput p1, p2, Landroidx/fragment/app/Fragment;->B:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->C:I

    goto :goto_b9

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add fragment "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    :goto_b9
    new-instance p1, Landroidx/fragment/app/g0$a;

    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g0;->e(Landroidx/fragment/app/g0$a;)V

    return-void

    :cond_c2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;
    .registers 4

    new-instance v0, Landroidx/fragment/app/g0$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/g0;->e(Landroidx/fragment/app/g0$a;)V

    return-object p0
.end method

.method public m(Z)Landroidx/fragment/app/g0;
    .registers 2

    iput-boolean p1, p0, Landroidx/fragment/app/g0;->r:Z

    return-object p0
.end method

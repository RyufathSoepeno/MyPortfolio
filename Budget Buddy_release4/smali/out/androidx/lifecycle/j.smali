.class public Landroidx/lifecycle/j;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/j$a;
    }
.end annotation


# instance fields
.field private b:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroidx/lifecycle/h;",
            "Landroidx/lifecycle/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/f$c;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/i;Z)V
    .registers 4

    invoke-direct {p0}, Landroidx/lifecycle/f;-><init>()V

    new-instance v0, Lk/a;

    invoke-direct {v0}, Lk/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/j;->e:I

    iput-boolean v0, p0, Landroidx/lifecycle/j;->f:Z

    iput-boolean v0, p0, Landroidx/lifecycle/j;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/j;->d:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    iput-object p1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    iput-boolean p2, p0, Landroidx/lifecycle/j;->i:Z

    return-void
.end method

.method private d(Landroidx/lifecycle/i;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0}, Lk/b;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-boolean v1, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/j$a;

    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    iget-object v4, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/h;

    invoke-virtual {v3, v4}, Lk/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v3}, Landroidx/lifecycle/f$b;->a(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/j;->n(Landroidx/lifecycle/f$c;)V

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    invoke-direct {p0}, Landroidx/lifecycle/j;->m()V

    goto :goto_1c

    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    return-void
.end method

.method private e(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$c;
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0, p1}, Lk/a;->h(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/j$a;

    iget-object p1, p1, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    goto :goto_13

    :cond_12
    move-object p1, v0

    :goto_13
    iget-object v1, p0, Landroidx/lifecycle/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Landroidx/lifecycle/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f$c;

    :cond_29
    iget-object v1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    invoke-static {v1, p1}, Landroidx/lifecycle/j;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/j;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Landroidx/lifecycle/j;->i:Z

    if-eqz v0, :cond_2b

    invoke-static {}, Lj/a;->d()Lj/a;

    move-result-object v0

    invoke-virtual {v0}, Lj/a;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2b

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    return-void
.end method

.method private g(Landroidx/lifecycle/i;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0}, Lk/b;->c()Lk/b$d;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/j$a;

    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    iget-object v4, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/h;

    invoke-virtual {v3, v4}, Lk/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-direct {p0, v3}, Landroidx/lifecycle/j;->n(Landroidx/lifecycle/f$c;)V

    iget-object v3, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v3}, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    invoke-direct {p0}, Landroidx/lifecycle/j;->m()V

    goto :goto_1c

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    return-void
.end method

.method private i()Z
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0}, Lk/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0}, Lk/b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/j$a;

    iget-object v0, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    iget-object v2, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v2}, Lk/b;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/j$a;

    iget-object v2, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    if-ne v0, v2, :cond_2d

    iget-object v0, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method static k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private l(Landroidx/lifecycle/f$c;)V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    if-ne v0, v1, :cond_27

    sget-object v0, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    if-eq p1, v0, :cond_e

    goto :goto_27

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    iput-object p1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    iget-boolean p1, p0, Landroidx/lifecycle/j;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_49

    iget p1, p0, Landroidx/lifecycle/j;->e:I

    if-eqz p1, :cond_33

    goto :goto_49

    :cond_33
    iput-boolean v0, p0, Landroidx/lifecycle/j;->f:Z

    invoke-direct {p0}, Landroidx/lifecycle/j;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/j;->f:Z

    iget-object p1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    sget-object v0, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    if-ne p1, v0, :cond_48

    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/j;->b:Lk/a;

    :cond_48
    return-void

    :cond_49
    :goto_49
    iput-boolean v0, p0, Landroidx/lifecycle/j;->g:Z

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private n(Landroidx/lifecycle/f$c;)V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private p()V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/j;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i;

    if-eqz v0, :cond_4d

    :cond_a
    :goto_a
    invoke-direct {p0}, Landroidx/lifecycle/j;->i()Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v1, :cond_4c

    iget-object v1, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    iget-object v2, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v2}, Lk/b;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/j$a;

    iget-object v2, v2, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2c

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->d(Landroidx/lifecycle/i;)V

    :cond_2c
    iget-object v1, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v1}, Lk/b;->d()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/j;->g:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    iget-object v1, v1, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_a

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->g(Landroidx/lifecycle/i;)V

    goto :goto_a

    :cond_4c
    return-void

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;)V
    .registers 8

    const-string v0, "addObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    :goto_e
    new-instance v0, Landroidx/lifecycle/j$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/j$a;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/f$c;)V

    iget-object v1, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v1, p1, v0}, Lk/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    iget-object v1, p0, Landroidx/lifecycle/j;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i;

    if-nez v1, :cond_29

    return-void

    :cond_29
    iget v2, p0, Landroidx/lifecycle/j;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_35

    iget-boolean v2, p0, Landroidx/lifecycle/j;->f:Z

    if-eqz v2, :cond_33

    goto :goto_35

    :cond_33
    const/4 v2, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x1

    :goto_36
    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->e(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$c;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/j;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/j;->e:I

    :goto_3f
    iget-object v5, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_80

    iget-object v4, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v4, p1}, Lk/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    iget-object v4, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-direct {p0, v4}, Landroidx/lifecycle/j;->n(Landroidx/lifecycle/f$c;)V

    iget-object v4, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v4}, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/j$a;->a(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    invoke-direct {p0}, Landroidx/lifecycle/j;->m()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->e(Landroidx/lifecycle/h;)Landroidx/lifecycle/f$c;

    move-result-object v4

    goto :goto_3f

    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/lifecycle/j$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    if-nez v2, :cond_85

    invoke-direct {p0}, Landroidx/lifecycle/j;->p()V

    :cond_85
    iget p1, p0, Landroidx/lifecycle/j;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/j;->e:I

    return-void
.end method

.method public b()Landroidx/lifecycle/f$c;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/j;->c:Landroidx/lifecycle/f$c;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/h;)V
    .registers 3

    const-string v0, "removeObserver"

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/j;->b:Lk/a;

    invoke-virtual {v0, p1}, Lk/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroidx/lifecycle/f$b;)V
    .registers 3

    const-string v0, "handleLifecycleEvent"

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->l(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public j(Landroidx/lifecycle/f$c;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j;->o(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public o(Landroidx/lifecycle/f$c;)V
    .registers 3

    const-string v0, "setCurrentState"

    invoke-direct {p0, v0}, Landroidx/lifecycle/j;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/j;->l(Landroidx/lifecycle/f$c;)V

    return-void
.end method

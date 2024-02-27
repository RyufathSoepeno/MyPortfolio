.class public final Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/c$a;,
        Ly/c$c;,
        Ly/c$b;
    }
.end annotation


# static fields
.field private static final g:Ly/c$b;


# instance fields
.field private final a:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Ljava/lang/String;",
            "Ly/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private d:Z

.field private e:Landroidx/savedstate/Recreator$b;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly/c$b;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ly/c;->g:Ly/c$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Ly/c;->a:Lk/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/c;->f:Z

    return-void
.end method

.method public static synthetic a(Ly/c;Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 3

    invoke-static {p0, p1, p2}, Ly/c;->d(Ly/c;Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method private static final d(Ly/c;Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_17

    const/4 p1, 0x1

    :goto_14
    iput-boolean p1, p0, Ly/c;->f:Z

    goto :goto_1d

    :cond_17
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_14

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ly/c;->d:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ly/c;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    iget-object v2, p0, Ly/c;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1d
    iget-object p1, p0, Ly/c;->c:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 v2, 0x1

    :cond_29
    if-nez v2, :cond_2d

    iput-object v1, p0, Ly/c;->c:Landroid/os/Bundle;

    :cond_2d
    return-object v0

    :cond_2e
    return-object v1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;)Ly/c$c;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly/c;->a:Lk/b;

    invoke-virtual {v0}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "components"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/c$c;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return-object v1
.end method

.method public final e(Landroidx/lifecycle/f;)V
    .registers 4

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ly/c;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_16

    new-instance v0, Ly/b;

    invoke-direct {v0, p0}, Ly/b;-><init>(Ly/c;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    iput-boolean v1, p0, Ly/c;->b:Z

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already attached."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Ly/c;->b:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Ly/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_19

    if-eqz p1, :cond_13

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-object p1, p0, Ly/c;->c:Landroid/os/Bundle;

    iput-boolean v1, p0, Ly/c;->d:Z

    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ly/c;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_11
    iget-object v1, p0, Ly/c;->a:Lk/b;

    invoke-virtual {v1}, Lk/b;->c()Lk/b$d;

    move-result-object v1

    const-string v2, "this.components.iteratorWithAdditions()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/c$c;

    invoke-interface {v2}, Ly/c$c;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_3c
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_47
    return-void
.end method

.method public final h(Ljava/lang/String;Ly/c$c;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly/c;->a:Lk/b;

    invoke-virtual {v0, p1, p2}, Lk/b;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly/c$c;

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p1, :cond_1a

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ly/c$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ly/c;->f:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Ly/c;->e:Landroidx/savedstate/Recreator$b;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/savedstate/Recreator$b;

    invoke-direct {v0, p0}, Landroidx/savedstate/Recreator$b;-><init>(Ly/c;)V

    :cond_12
    iput-object v0, p0, Ly/c;->e:Landroidx/savedstate/Recreator$b;

    const/4 v0, 0x0

    :try_start_15
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_1a} :catch_2b

    iget-object v0, p0, Ly/c;->e:Landroidx/savedstate/Recreator$b;

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clazz.name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/savedstate/Recreator$b;->b(Ljava/lang/String;)V

    :cond_2a
    return-void

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

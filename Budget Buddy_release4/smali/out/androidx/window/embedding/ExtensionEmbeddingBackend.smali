.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/embedding/EmbeddingBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

.field private static final TAG:Ljava/lang/String; = "EmbeddingBackend"

.field private static volatile globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

.field private static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

.field private final splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final splitInfoEmbeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

.field private final splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitInfoEmbeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-interface {v0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setEmbeddingCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V

    :goto_1b
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static final synthetic access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;
    .registers 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-object v0
.end method

.method public static final synthetic access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$setGlobalInstance$cp(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .registers 1

    sput-object p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-void
.end method

.method public static synthetic getSplitChangeCallbacks$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final getEmbeddingExtension()Landroidx/window/embedding/EmbeddingInterfaceCompat;
    .registers 2

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    return-object v0
.end method

.method public final getSplitChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getSplitRules()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public isSplitSupported()Z
    .registers 2

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public registerRule(Landroidx/window/embedding/EmbeddingRule;)V
    .registers 3

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-nez p1, :cond_17

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p1, v0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setSplitRules(Ljava/util/Set;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public registerSplitListenerForActivity(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/a<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_14
    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getEmbeddingExtension()Landroidx/window/embedding/EmbeddingInterfaceCompat;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string p1, "EmbeddingBackend"

    const-string p2, "Extension not loaded, skipping callback registration."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb1/h;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_58

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2c
    :try_start_2c
    new-instance v1, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/a;)V

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getSplitChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitInfoEmbeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->getLastInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitInfoEmbeddingCallback:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->getLastInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    :goto_49
    invoke-virtual {v1, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->accept(Ljava/util/List;)V

    goto :goto_52

    :cond_4d
    invoke-static {}, Lb1/h;->d()Ljava/util/List;

    move-result-object p1

    goto :goto_49

    :goto_52
    sget-object p1, La1/q;->a:La1/q;
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_58

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_58
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final setEmbeddingExtension(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .registers 2

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    return-void
.end method

.method public setSplitRules(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-nez p1, :cond_14

    goto :goto_19

    :cond_14
    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p1, v0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setSplitRules(Ljava/util/Set;)V

    :goto_19
    return-void
.end method

.method public unregisterRule(Landroidx/window/embedding/EmbeddingRule;)V
    .registers 3

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->embeddingExtension:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-nez p1, :cond_17

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitRules:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p1, v0}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->setSplitRules(Ljava/util/Set;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public unregisterSplitListenerForActivity(Landroidx/core/util/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/a<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getSplitChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-virtual {v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->getCallback()Landroidx/core/util/a;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->getSplitChangeCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2f
    sget-object p1, La1/q;->a:La1/q;
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_35

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_35
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

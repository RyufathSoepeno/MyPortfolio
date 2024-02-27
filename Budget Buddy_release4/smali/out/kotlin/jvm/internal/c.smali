.class public abstract Lkotlin/jvm/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/c$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Ln1/b;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lkotlin/jvm/internal/c$a;->a()Lkotlin/jvm/internal/c$a;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/c;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/c;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/c;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/c;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/c;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/c;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ln1/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ln1/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Ln1/b;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->reflected:Ln1/b;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->computeReflected()Ln1/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/c;->reflected:Ln1/b;

    :cond_a
    return-object v0
.end method

.method protected abstract computeReflected()Ln1/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/a;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ln1/d;
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/c;->owner:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_13

    :cond_6
    iget-boolean v1, p0, Lkotlin/jvm/internal/c;->isTopLevel:Z

    if-eqz v1, :cond_f

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Class;)Ln1/d;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Class;)Ln1/c;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Ln1/b;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->compute()Ln1/b;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Li1/b;

    invoke-direct {v0}, Li1/b;-><init>()V

    throw v0
.end method

.method public getReturnType()Ln1/h;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->getReturnType()Ln1/h;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Ln1/i;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->getVisibility()Ln1/i;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Ln1/b;

    move-result-object v0

    invoke-interface {v0}, Ln1/b;->isSuspend()Z

    move-result v0

    return v0
.end method

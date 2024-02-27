.class public Landroidx/lifecycle/a0$a;
.super Landroidx/lifecycle/a0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/a0$a$a;
    }
.end annotation


# static fields
.field public static final e:Landroidx/lifecycle/a0$a$a;

.field private static f:Landroidx/lifecycle/a0$a;

.field public static final g:Lw/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/a$b<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/lifecycle/a0$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0$a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Landroidx/lifecycle/a0$a;->e:Landroidx/lifecycle/a0$a$a;

    sget-object v0, Landroidx/lifecycle/a0$a$a$a;->a:Landroidx/lifecycle/a0$a$a$a;

    sput-object v0, Landroidx/lifecycle/a0$a;->g:Lw/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/lifecycle/a0$a;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/a0$a;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/a0$c;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a0$a;->d:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic e()Landroidx/lifecycle/a0$a;
    .registers 1

    sget-object v0, Landroidx/lifecycle/a0$a;->f:Landroidx/lifecycle/a0$a;

    return-object v0
.end method

.method public static final synthetic f(Landroidx/lifecycle/a0$a;)V
    .registers 1

    sput-object p0, Landroidx/lifecycle/a0$a;->f:Landroidx/lifecycle/a0$a;

    return-void
.end method

.method private final g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/z;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/Application;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    :try_start_b
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/z;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_20} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_20} :catch_52
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_20} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_20} :catch_26

    const-string p1, "{\n                try {\n\u2026          }\n            }"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_82

    :catch_26
    move-exception p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3c
    move-exception p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_52
    move-exception p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_68
    move-exception p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7e
    invoke-super {p0, p1}, Landroidx/lifecycle/a0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p2

    :goto_82
    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/a0$a;->d:Landroid/app/Application;

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/a0$a;->g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lw/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/a0$a;->d:Landroid/app/Application;

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    goto :goto_2e

    :cond_13
    sget-object v0, Landroidx/lifecycle/a0$a;->g:Lw/a$b;

    invoke-virtual {p2, v0}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-eqz p2, :cond_22

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/a0$a;->g(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/z;

    move-result-object p1

    goto :goto_2e

    :cond_22
    const-class p2, Landroidx/lifecycle/a;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_2f

    invoke-super {p0, p1}, Landroidx/lifecycle/a0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    :goto_2e
    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CreationExtras must have an application by `APPLICATION_KEY`"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

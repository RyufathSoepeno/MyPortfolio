.class public Landroidx/lifecycle/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/a0$c$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/a0$c$a;

.field private static b:Landroidx/lifecycle/a0$c;

.field public static final c:Lw/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/a$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/lifecycle/a0$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0$c$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Landroidx/lifecycle/a0$c;->a:Landroidx/lifecycle/a0$c$a;

    sget-object v0, Landroidx/lifecycle/a0$c$a$a;->a:Landroidx/lifecycle/a0$c$a$a;

    sput-object v0, Landroidx/lifecycle/a0$c;->c:Lw/a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c()Landroidx/lifecycle/a0$c;
    .registers 1

    sget-object v0, Landroidx/lifecycle/a0$c;->b:Landroidx/lifecycle/a0$c;

    return-object v0
.end method

.method public static final synthetic d(Landroidx/lifecycle/a0$c;)V
    .registers 1

    sput-object p0, Landroidx/lifecycle/a0$c;->b:Landroidx/lifecycle/a0$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    const-string v1, "modelClass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{\n                modelC\u2026wInstance()\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/z;
    :try_end_12
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_12} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public synthetic b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/b0;->b(Landroidx/lifecycle/a0$b;Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1
.end method

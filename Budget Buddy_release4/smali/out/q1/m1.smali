.class public interface abstract Lq1/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/m1$b;,
        Lq1/m1$a;
    }
.end annotation


# static fields
.field public static final d:Lq1/m1$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lq1/m1$b;->e:Lq1/m1$b;

    sput-object v0, Lq1/m1;->d:Lq1/m1$b;

    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract i(Lq1/t;)Lq1/r;
.end method

.method public abstract j(ZZLj1/l;)Lq1/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lj1/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La1/q;",
            ">;)",
            "Lq1/v0;"
        }
    .end annotation
.end method

.method public abstract l()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract o(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract start()Z
.end method

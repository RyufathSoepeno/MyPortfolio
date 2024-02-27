.class public interface abstract Lc1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/e$b;,
        Lc1/e$a;
    }
.end annotation


# static fields
.field public static final b:Lc1/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lc1/e$b;->e:Lc1/e$b;

    sput-object v0, Lc1/e;->b:Lc1/e$b;

    return-void
.end method


# virtual methods
.method public abstract a(Lc1/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/d<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract q(Lc1/d;)Lc1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc1/d<",
            "-TT;>;)",
            "Lc1/d<",
            "TT;>;"
        }
    .end annotation
.end method

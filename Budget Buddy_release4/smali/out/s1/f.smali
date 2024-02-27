.class public interface abstract Ls1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/t;
.implements Ls1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/t<",
        "TE;>;",
        "Ls1/p<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ls1/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ls1/f$a;->a:Ls1/f$a;

    sput-object v0, Ls1/f;->a:Ls1/f$a;

    return-void
.end method

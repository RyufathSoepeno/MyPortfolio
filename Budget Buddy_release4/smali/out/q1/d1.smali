.class public abstract Lq1/d1;
.super Lq1/d0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/d1$a;
    }
.end annotation


# static fields
.field public static final f:Lq1/d1$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq1/d1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/d1$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lq1/d1;->f:Lq1/d1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq1/d0;-><init>()V

    return-void
.end method

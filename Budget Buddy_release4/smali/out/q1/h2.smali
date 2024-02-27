.class public final Lq1/h2;
.super Lc1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/h2$a;
    }
.end annotation


# static fields
.field public static final f:Lq1/h2$a;


# instance fields
.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq1/h2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/h2$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lq1/h2;->f:Lq1/h2$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lq1/h2;->f:Lq1/h2$a;

    invoke-direct {p0, v0}, Lc1/a;-><init>(Lc1/g$c;)V

    return-void
.end method

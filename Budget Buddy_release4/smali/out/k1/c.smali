.class public abstract Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/c$a;
    }
.end annotation


# static fields
.field public static final e:Lk1/c$a;

.field private static final f:Lk1/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lk1/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk1/c$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lk1/c;->e:Lk1/c$a;

    sget-object v0, Le1/b;->a:Le1/a;

    invoke-virtual {v0}, Le1/a;->b()Lk1/c;

    move-result-object v0

    sput-object v0, Lk1/c;->f:Lk1/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lk1/c;
    .registers 1

    sget-object v0, Lk1/c;->f:Lk1/c;

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelAsyncTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClearIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ClearIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") && dict["FailIdList"] != nil {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ClearIntervenesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ClearIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ClearIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearIntervenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ClearIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentDomain: String?

    public var contentText: String?

    public var keywords: [String]?

    public var prompt: String?

    public var taskId: String?

    public var title: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentDomain") && dict["ContentDomain"] != nil {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class CreateGeneratedContentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentDomain: String?

    public var contentText: String?

    public var keywordsShrink: String?

    public var prompt: String?

    public var taskId: String?

    public var title: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentDomain") && dict["ContentDomain"] != nil {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class CreateGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGeneratedContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTokenRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class CreateTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expiredTime: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTokenResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGeneratedContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInterveneRuleRequest : Tea.TeaModel {
    public var agentKey: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteInterveneRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") && dict["FailIdList"] != nil {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteInterveneRuleResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteInterveneRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteInterveneRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInterveneRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInterveneRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMaterialByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteMaterialByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteMaterialByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMaterialByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteMaterialByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class ExportGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExportGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportGeneratedContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExportGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ExportIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: ExportIntervenesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ExportIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExportIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportIntervenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExportIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FeedbackDialogueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customerResponse: String?

    public var goodText: String?

    public var modifiedResponse: String?

    public var rating: String?

    public var ratingTags: [String]?

    public var sessionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customerResponse != nil {
            map["CustomerResponse"] = self.customerResponse!
        }
        if self.goodText != nil {
            map["GoodText"] = self.goodText!
        }
        if self.modifiedResponse != nil {
            map["ModifiedResponse"] = self.modifiedResponse!
        }
        if self.rating != nil {
            map["Rating"] = self.rating!
        }
        if self.ratingTags != nil {
            map["RatingTags"] = self.ratingTags!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomerResponse") && dict["CustomerResponse"] != nil {
            self.customerResponse = dict["CustomerResponse"] as! String
        }
        if dict.keys.contains("GoodText") && dict["GoodText"] != nil {
            self.goodText = dict["GoodText"] as! String
        }
        if dict.keys.contains("ModifiedResponse") && dict["ModifiedResponse"] != nil {
            self.modifiedResponse = dict["ModifiedResponse"] as! String
        }
        if dict.keys.contains("Rating") && dict["Rating"] != nil {
            self.rating = dict["Rating"] as! String
        }
        if dict.keys.contains("RatingTags") && dict["RatingTags"] != nil {
            self.ratingTags = dict["RatingTags"] as! [String]
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class FeedbackDialogueShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customerResponse: String?

    public var goodText: String?

    public var modifiedResponse: String?

    public var rating: String?

    public var ratingTagsShrink: String?

    public var sessionId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customerResponse != nil {
            map["CustomerResponse"] = self.customerResponse!
        }
        if self.goodText != nil {
            map["GoodText"] = self.goodText!
        }
        if self.modifiedResponse != nil {
            map["ModifiedResponse"] = self.modifiedResponse!
        }
        if self.rating != nil {
            map["Rating"] = self.rating!
        }
        if self.ratingTagsShrink != nil {
            map["RatingTags"] = self.ratingTagsShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomerResponse") && dict["CustomerResponse"] != nil {
            self.customerResponse = dict["CustomerResponse"] as! String
        }
        if dict.keys.contains("GoodText") && dict["GoodText"] != nil {
            self.goodText = dict["GoodText"] as! String
        }
        if dict.keys.contains("ModifiedResponse") && dict["ModifiedResponse"] != nil {
            self.modifiedResponse = dict["ModifiedResponse"] as! String
        }
        if dict.keys.contains("Rating") && dict["Rating"] != nil {
            self.rating = dict["Rating"] as! String
        }
        if dict.keys.contains("RatingTags") && dict["RatingTags"] != nil {
            self.ratingTagsShrink = dict["RatingTags"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class FeedbackDialogueResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FeedbackDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FeedbackDialogueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FeedbackDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FetchImageTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var taskIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.taskIdList != nil {
            map["TaskIdList"] = self.taskIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") && dict["ArticleTaskId"] != nil {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("TaskIdList") && dict["TaskIdList"] != nil {
            self.taskIdList = dict["TaskIdList"] as! [String]
        }
    }
}

public class FetchImageTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var taskIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.taskIdListShrink != nil {
            map["TaskIdList"] = self.taskIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") && dict["ArticleTaskId"] != nil {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("TaskIdList") && dict["TaskIdList"] != nil {
            self.taskIdListShrink = dict["TaskIdList"] as! String
        }
    }
}

public class FetchImageTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskInfoList : Tea.TeaModel {
            public class ImageList : Tea.TeaModel {
                public var code: String?

                public var message: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") && dict["Code"] != nil {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var id: Int64?

            public var imageList: [FetchImageTaskResponseBody.Data.TaskInfoList.ImageList]?

            public var taskId: String?

            public var taskStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageList != nil {
                    var tmp : [Any] = []
                    for k in self.imageList! {
                        tmp.append(k.toMap())
                    }
                    map["ImageList"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ImageList") && dict["ImageList"] != nil {
                    var tmp : [FetchImageTaskResponseBody.Data.TaskInfoList.ImageList] = []
                    for v in dict["ImageList"] as! [Any] {
                        var model = FetchImageTaskResponseBody.Data.TaskInfoList.ImageList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.imageList = tmp
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
            }
        }
        public var taskInfoList: [FetchImageTaskResponseBody.Data.TaskInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskInfoList != nil {
                var tmp : [Any] = []
                for k in self.taskInfoList! {
                    tmp.append(k.toMap())
                }
                map["TaskInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskInfoList") && dict["TaskInfoList"] != nil {
                var tmp : [FetchImageTaskResponseBody.Data.TaskInfoList] = []
                for v in dict["TaskInfoList"] as! [Any] {
                    var model = FetchImageTaskResponseBody.Data.TaskInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskInfoList = tmp
            }
        }
    }
    public var code: String?

    public var data: FetchImageTaskResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = FetchImageTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FetchImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchImageTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FetchImageTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateFileUrlByKeyRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileKey: String?

    public var fileName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
    }
}

public class GenerateFileUrlByKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateFileUrlByKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateFileUrlByKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GenerateFileUrlByKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateImageTaskRequest : Tea.TeaModel {
    public class ParagraphList : Tea.TeaModel {
        public var content: String?

        public var id: Int64?

        public var taskId: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var agentKey: String?

    public var articleTaskId: String?

    public var paragraphList: [GenerateImageTaskRequest.ParagraphList]?

    public var size: String?

    public var style: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.paragraphList != nil {
            var tmp : [Any] = []
            for k in self.paragraphList! {
                tmp.append(k.toMap())
            }
            map["ParagraphList"] = tmp
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") && dict["ArticleTaskId"] != nil {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("ParagraphList") && dict["ParagraphList"] != nil {
            var tmp : [GenerateImageTaskRequest.ParagraphList] = []
            for v in dict["ParagraphList"] as! [Any] {
                var model = GenerateImageTaskRequest.ParagraphList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.paragraphList = tmp
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! String
        }
        if dict.keys.contains("Style") && dict["Style"] != nil {
            self.style = dict["Style"] as! String
        }
    }
}

public class GenerateImageTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var paragraphListShrink: String?

    public var size: String?

    public var style: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.paragraphListShrink != nil {
            map["ParagraphList"] = self.paragraphListShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") && dict["ArticleTaskId"] != nil {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("ParagraphList") && dict["ParagraphList"] != nil {
            self.paragraphListShrink = dict["ParagraphList"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! String
        }
        if dict.keys.contains("Style") && dict["Style"] != nil {
            self.style = dict["Style"] as! String
        }
    }
}

public class GenerateImageTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskList : Tea.TeaModel {
            public var content: String?

            public var id: Int64?

            public var taskId: String?

            public var taskStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
            }
        }
        public var taskList: [GenerateImageTaskResponseBody.Data.TaskList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskList != nil {
                var tmp : [Any] = []
                for k in self.taskList! {
                    tmp.append(k.toMap())
                }
                map["TaskList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskList") && dict["TaskList"] != nil {
                var tmp : [GenerateImageTaskResponseBody.Data.TaskList] = []
                for v in dict["TaskList"] as! [Any] {
                    var model = GenerateImageTaskResponseBody.Data.TaskList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskList = tmp
            }
        }
    }
    public var code: String?

    public var data: GenerateImageTaskResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateImageTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateImageTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GenerateImageTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateUploadConfigRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileName: String?

    public var parentDir: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.parentDir != nil {
            map["ParentDir"] = self.parentDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("ParentDir") && dict["ParentDir"] != nil {
            self.parentDir = dict["ParentDir"] as! String
        }
    }
}

public class GenerateUploadConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileKey: String?

        public var formDatas: [String: Any]?

        public var postUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileKey != nil {
                map["FileKey"] = self.fileKey!
            }
            if self.formDatas != nil {
                map["FormDatas"] = self.formDatas!
            }
            if self.postUrl != nil {
                map["PostUrl"] = self.postUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
                self.fileKey = dict["FileKey"] as! String
            }
            if dict.keys.contains("FormDatas") && dict["FormDatas"] != nil {
                self.formDatas = dict["FormDatas"] as! [String: Any]
            }
            if dict.keys.contains("PostUrl") && dict["PostUrl"] != nil {
                self.postUrl = dict["PostUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GenerateUploadConfigResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateUploadConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateUploadConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GenerateUploadConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateViewPointRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var miniDoc: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.miniDoc != nil {
                map["MiniDoc"] = self.miniDoc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MiniDoc") && dict["MiniDoc"] != nil {
                self.miniDoc = dict["MiniDoc"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var referenceData: GenerateViewPointRequest.ReferenceData?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReferenceData") && dict["ReferenceData"] != nil {
            var model = GenerateViewPointRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
    }
}

public class GenerateViewPointShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var referenceDataShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReferenceData") && dict["ReferenceData"] != nil {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
    }
}

public class GenerateViewPointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var point: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.point != nil {
                map["Point"] = self.point!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Point") && dict["Point"] != nil {
                self.point = dict["Point"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GenerateViewPointResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GenerateViewPointResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GenerateViewPointResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateViewPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateViewPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GenerateViewPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceOrderConfigRequest : Tea.TeaModel {
    public var agentKey: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class GetDataSourceOrderConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserConfigDataSourceList : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var number: Int32?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Number") && dict["Number"] != nil {
                    self.number = dict["Number"] as! Int32
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var userConfigDataSourceList: [GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userConfigDataSourceList != nil {
                var tmp : [Any] = []
                for k in self.userConfigDataSourceList! {
                    tmp.append(k.toMap())
                }
                map["UserConfigDataSourceList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserConfigDataSourceList") && dict["UserConfigDataSourceList"] != nil {
                var tmp : [GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList] = []
                for v in dict["UserConfigDataSourceList"] as! [Any] {
                    var model = GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userConfigDataSourceList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDataSourceOrderConfigResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDataSourceOrderConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetDataSourceOrderConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceOrderConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDataSourceOrderConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetGeneratedContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var contentDomain: String?

        public var contentText: String?

        public var createTime: String?

        public var createUser: String?

        public var deviceId: String?

        public var id: Int64?

        public var keywordList: [String]?

        public var keywords: String?

        public var prompt: String?

        public var taskId: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentDomain != nil {
                map["ContentDomain"] = self.contentDomain!
            }
            if self.contentText != nil {
                map["ContentText"] = self.contentText!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywordList != nil {
                map["KeywordList"] = self.keywordList!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentDomain") && dict["ContentDomain"] != nil {
                self.contentDomain = dict["ContentDomain"] as! String
            }
            if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
                self.contentText = dict["ContentText"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("KeywordList") && dict["KeywordList"] != nil {
                self.keywordList = dict["KeywordList"] as! [String]
            }
            if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
                self.keywords = dict["Keywords"] as! String
            }
            if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetGeneratedContentResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetGeneratedContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGeneratedContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneGlobalReplyRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetInterveneGlobalReplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReplyMessagList : Tea.TeaModel {
            public var message: String?

            public var replyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.replyType != nil {
                    map["ReplyType"] = self.replyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ReplyType") && dict["ReplyType"] != nil {
                    self.replyType = dict["ReplyType"] as! String
                }
            }
        }
        public var replyMessagList: [GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.replyMessagList != nil {
                var tmp : [Any] = []
                for k in self.replyMessagList! {
                    tmp.append(k.toMap())
                }
                map["ReplyMessagList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReplyMessagList") && dict["ReplyMessagList"] != nil {
                var tmp : [GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList] = []
                for v in dict["ReplyMessagList"] as! [Any] {
                    var model = GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.replyMessagList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetInterveneGlobalReplyResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetInterveneGlobalReplyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInterveneGlobalReplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneGlobalReplyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInterveneGlobalReplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneImportTaskInfoRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetInterveneImportTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Status : Tea.TeaModel {
            public var msg: String?

            public var percentage: Int32?

            public var status: Int32?

            public var taskId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Msg") && dict["Msg"] != nil {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                    self.percentage = dict["Percentage"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var status: GetInterveneImportTaskInfoResponseBody.Data.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") && dict["Status"] != nil {
                var model = GetInterveneImportTaskInfoResponseBody.Data.Status()
                model.fromMap(dict["Status"] as! [String: Any])
                self.status = model
            }
        }
    }
    public var code: String?

    public var data: GetInterveneImportTaskInfoResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetInterveneImportTaskInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInterveneImportTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneImportTaskInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInterveneImportTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneRuleDetailRequest : Tea.TeaModel {
    public var agentKey: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class GetInterveneRuleDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneRuleDetail : Tea.TeaModel {
            public class AnswerConfig : Tea.TeaModel {
                public var answerType: Int32?

                public var message: String?

                public var namespace: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerType != nil {
                        map["AnswerType"] = self.answerType!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnswerType") && dict["AnswerType"] != nil {
                        self.answerType = dict["AnswerType"] as! Int32
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
                    }
                }
            }
            public class EffectConfig : Tea.TeaModel {
                public var effectType: Int32?

                public var endTime: String?

                public var startTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.effectType != nil {
                        map["EffectType"] = self.effectType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EffectType") && dict["EffectType"] != nil {
                        self.effectType = dict["EffectType"] as! Int32
                    }
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var answerConfig: [GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig]?

            public var effectConfig: GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.EffectConfig?

            public var interveneType: Int32?

            public var namespaceList: [String]?

            public var ruleId: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.effectConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerConfig != nil {
                    var tmp : [Any] = []
                    for k in self.answerConfig! {
                        tmp.append(k.toMap())
                    }
                    map["AnswerConfig"] = tmp
                }
                if self.effectConfig != nil {
                    map["EffectConfig"] = self.effectConfig?.toMap()
                }
                if self.interveneType != nil {
                    map["InterveneType"] = self.interveneType!
                }
                if self.namespaceList != nil {
                    map["NamespaceList"] = self.namespaceList!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerConfig") && dict["AnswerConfig"] != nil {
                    var tmp : [GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig] = []
                    for v in dict["AnswerConfig"] as! [Any] {
                        var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.answerConfig = tmp
                }
                if dict.keys.contains("EffectConfig") && dict["EffectConfig"] != nil {
                    var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.EffectConfig()
                    model.fromMap(dict["EffectConfig"] as! [String: Any])
                    self.effectConfig = model
                }
                if dict.keys.contains("InterveneType") && dict["InterveneType"] != nil {
                    self.interveneType = dict["InterveneType"] as! Int32
                }
                if dict.keys.contains("NamespaceList") && dict["NamespaceList"] != nil {
                    self.namespaceList = dict["NamespaceList"] as! [String]
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var interveneRuleDetail: GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.interveneRuleDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interveneRuleDetail != nil {
                map["InterveneRuleDetail"] = self.interveneRuleDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InterveneRuleDetail") && dict["InterveneRuleDetail"] != nil {
                var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail()
                model.fromMap(dict["InterveneRuleDetail"] as! [String: Any])
                self.interveneRuleDetail = model
            }
        }
    }
    public var code: String?

    public var data: GetInterveneRuleDetailResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetInterveneRuleDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInterveneRuleDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneRuleDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInterveneRuleDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneTemplateFileUrlRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetInterveneTemplateFileUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetInterveneTemplateFileUrlResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetInterveneTemplateFileUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInterveneTemplateFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneTemplateFileUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInterveneTemplateFileUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMaterialByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetMaterialByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var createTime: String?

        public var createUser: String?

        public var docKeywords: [String]?

        public var docType: String?

        public var externalUrl: String?

        public var htmlContent: String?

        public var id: Int64?

        public var pubTime: String?

        public var publicUrl: String?

        public var shareAttr: Int32?

        public var srcFrom: String?

        public var summary: String?

        public var textContent: String?

        public var thumbnailInBase64: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.docKeywords != nil {
                map["DocKeywords"] = self.docKeywords!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.externalUrl != nil {
                map["ExternalUrl"] = self.externalUrl!
            }
            if self.htmlContent != nil {
                map["HtmlContent"] = self.htmlContent!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            if self.shareAttr != nil {
                map["ShareAttr"] = self.shareAttr!
            }
            if self.srcFrom != nil {
                map["SrcFrom"] = self.srcFrom!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.textContent != nil {
                map["TextContent"] = self.textContent!
            }
            if self.thumbnailInBase64 != nil {
                map["ThumbnailInBase64"] = self.thumbnailInBase64!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") && dict["Author"] != nil {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
                self.docKeywords = dict["DocKeywords"] as! [String]
            }
            if dict.keys.contains("DocType") && dict["DocType"] != nil {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
                self.externalUrl = dict["ExternalUrl"] as! String
            }
            if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
                self.htmlContent = dict["HtmlContent"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("PublicUrl") && dict["PublicUrl"] != nil {
                self.publicUrl = dict["PublicUrl"] as! String
            }
            if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
                self.shareAttr = dict["ShareAttr"] as! Int32
            }
            if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
                self.srcFrom = dict["SrcFrom"] as! String
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
                self.textContent = dict["TextContent"] as! String
            }
            if dict.keys.contains("ThumbnailInBase64") && dict["ThumbnailInBase64"] != nil {
                self.thumbnailInBase64 = dict["ThumbnailInBase64"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMaterialByIdResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetMaterialByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMaterialByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMaterialByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMaterialByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPropertiesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetPropertiesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConsoleConfig : Tea.TeaModel {
            public var tipContent: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tipContent != nil {
                    map["TipContent"] = self.tipContent!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TipContent") && dict["TipContent"] != nil {
                    self.tipContent = dict["TipContent"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class IntelligentSearchConfig : Tea.TeaModel {
            public class SearchSamples : Tea.TeaModel {
                public class Articles : Tea.TeaModel {
                    public var select: Bool?

                    public var stared: Bool?

                    public var title: String?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.select != nil {
                            map["Select"] = self.select!
                        }
                        if self.stared != nil {
                            map["Stared"] = self.stared!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Select") && dict["Select"] != nil {
                            self.select = dict["Select"] as! Bool
                        }
                        if dict.keys.contains("Stared") && dict["Stared"] != nil {
                            self.stared = dict["Stared"] as! Bool
                        }
                        if dict.keys.contains("Title") && dict["Title"] != nil {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Url") && dict["Url"] != nil {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public var articles: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles]?

                public var prompt: String?

                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.articles != nil {
                        var tmp : [Any] = []
                        for k in self.articles! {
                            tmp.append(k.toMap())
                        }
                        map["Articles"] = tmp
                    }
                    if self.prompt != nil {
                        map["Prompt"] = self.prompt!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Articles") && dict["Articles"] != nil {
                        var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles] = []
                        for v in dict["Articles"] as! [Any] {
                            var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.articles = tmp
                    }
                    if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
                        self.prompt = dict["Prompt"] as! String
                    }
                    if dict.keys.contains("Text") && dict["Text"] != nil {
                        self.text = dict["Text"] as! String
                    }
                }
            }
            public class SearchSources : Tea.TeaModel {
                public var code: String?

                public var datasetName: String?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.datasetName != nil {
                        map["DatasetName"] = self.datasetName!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") && dict["Code"] != nil {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("DatasetName") && dict["DatasetName"] != nil {
                        self.datasetName = dict["DatasetName"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var productDescription: String?

            public var searchSamples: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples]?

            public var searchSources: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productDescription != nil {
                    map["ProductDescription"] = self.productDescription!
                }
                if self.searchSamples != nil {
                    var tmp : [Any] = []
                    for k in self.searchSamples! {
                        tmp.append(k.toMap())
                    }
                    map["SearchSamples"] = tmp
                }
                if self.searchSources != nil {
                    var tmp : [Any] = []
                    for k in self.searchSources! {
                        tmp.append(k.toMap())
                    }
                    map["SearchSources"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductDescription") && dict["ProductDescription"] != nil {
                    self.productDescription = dict["ProductDescription"] as! String
                }
                if dict.keys.contains("SearchSamples") && dict["SearchSamples"] != nil {
                    var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples] = []
                    for v in dict["SearchSamples"] as! [Any] {
                        var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.searchSamples = tmp
                }
                if dict.keys.contains("SearchSources") && dict["SearchSources"] != nil {
                    var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources] = []
                    for v in dict["SearchSources"] as! [Any] {
                        var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.searchSources = tmp
                }
            }
        }
        public class SearchSources : Tea.TeaModel {
            public var label: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class UserInfo : Tea.TeaModel {
            public var agentId: String?

            public var tenantId: String?

            public var userId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentId") && dict["AgentId"] != nil {
                    self.agentId = dict["AgentId"] as! String
                }
                if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class WanxiangImageSizeConfig : Tea.TeaModel {
            public var name: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class WanxiangImageStyleConfig : Tea.TeaModel {
            public var name: String?

            public var pic: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pic != nil {
                    map["Pic"] = self.pic!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Pic") && dict["Pic"] != nil {
                    self.pic = dict["Pic"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var chatConfig: [String: Any]?

        public var consoleConfig: GetPropertiesResponseBody.Data.ConsoleConfig?

        public var generalConfigMap: [String: Any]?

        public var intelligentSearchConfig: GetPropertiesResponseBody.Data.IntelligentSearchConfig?

        public var searchSources: [GetPropertiesResponseBody.Data.SearchSources]?

        public var slrAuthorized: Bool?

        public var userInfo: GetPropertiesResponseBody.Data.UserInfo?

        public var wanxiangImageSizeConfig: [GetPropertiesResponseBody.Data.WanxiangImageSizeConfig]?

        public var wanxiangImageStyleConfig: [GetPropertiesResponseBody.Data.WanxiangImageStyleConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.consoleConfig?.validate()
            try self.intelligentSearchConfig?.validate()
            try self.userInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chatConfig != nil {
                map["ChatConfig"] = self.chatConfig!
            }
            if self.consoleConfig != nil {
                map["ConsoleConfig"] = self.consoleConfig?.toMap()
            }
            if self.generalConfigMap != nil {
                map["GeneralConfigMap"] = self.generalConfigMap!
            }
            if self.intelligentSearchConfig != nil {
                map["IntelligentSearchConfig"] = self.intelligentSearchConfig?.toMap()
            }
            if self.searchSources != nil {
                var tmp : [Any] = []
                for k in self.searchSources! {
                    tmp.append(k.toMap())
                }
                map["SearchSources"] = tmp
            }
            if self.slrAuthorized != nil {
                map["SlrAuthorized"] = self.slrAuthorized!
            }
            if self.userInfo != nil {
                map["UserInfo"] = self.userInfo?.toMap()
            }
            if self.wanxiangImageSizeConfig != nil {
                var tmp : [Any] = []
                for k in self.wanxiangImageSizeConfig! {
                    tmp.append(k.toMap())
                }
                map["WanxiangImageSizeConfig"] = tmp
            }
            if self.wanxiangImageStyleConfig != nil {
                var tmp : [Any] = []
                for k in self.wanxiangImageStyleConfig! {
                    tmp.append(k.toMap())
                }
                map["WanxiangImageStyleConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChatConfig") && dict["ChatConfig"] != nil {
                self.chatConfig = dict["ChatConfig"] as! [String: Any]
            }
            if dict.keys.contains("ConsoleConfig") && dict["ConsoleConfig"] != nil {
                var model = GetPropertiesResponseBody.Data.ConsoleConfig()
                model.fromMap(dict["ConsoleConfig"] as! [String: Any])
                self.consoleConfig = model
            }
            if dict.keys.contains("GeneralConfigMap") && dict["GeneralConfigMap"] != nil {
                self.generalConfigMap = dict["GeneralConfigMap"] as! [String: Any]
            }
            if dict.keys.contains("IntelligentSearchConfig") && dict["IntelligentSearchConfig"] != nil {
                var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig()
                model.fromMap(dict["IntelligentSearchConfig"] as! [String: Any])
                self.intelligentSearchConfig = model
            }
            if dict.keys.contains("SearchSources") && dict["SearchSources"] != nil {
                var tmp : [GetPropertiesResponseBody.Data.SearchSources] = []
                for v in dict["SearchSources"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.SearchSources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.searchSources = tmp
            }
            if dict.keys.contains("SlrAuthorized") && dict["SlrAuthorized"] != nil {
                self.slrAuthorized = dict["SlrAuthorized"] as! Bool
            }
            if dict.keys.contains("UserInfo") && dict["UserInfo"] != nil {
                var model = GetPropertiesResponseBody.Data.UserInfo()
                model.fromMap(dict["UserInfo"] as! [String: Any])
                self.userInfo = model
            }
            if dict.keys.contains("WanxiangImageSizeConfig") && dict["WanxiangImageSizeConfig"] != nil {
                var tmp : [GetPropertiesResponseBody.Data.WanxiangImageSizeConfig] = []
                for v in dict["WanxiangImageSizeConfig"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.WanxiangImageSizeConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wanxiangImageSizeConfig = tmp
            }
            if dict.keys.contains("WanxiangImageStyleConfig") && dict["WanxiangImageStyleConfig"] != nil {
                var tmp : [GetPropertiesResponseBody.Data.WanxiangImageStyleConfig] = []
                for v in dict["WanxiangImageStyleConfig"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.WanxiangImageStyleConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wanxiangImageStyleConfig = tmp
            }
        }
    }
    public var code: String?

    public var data: GetPropertiesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPropertiesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPropertiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPropertiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportInterveneFileRequest : Tea.TeaModel {
    public var agentKey: String?

    public var docName: String?

    public var fileKey: String?

    public var fileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DocName") && dict["DocName"] != nil {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.fileUrl = dict["FileUrl"] as! String
        }
    }
}

public class ImportInterveneFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") && dict["FailIdList"] != nil {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ImportInterveneFileResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ImportInterveneFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ImportInterveneFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportInterveneFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportInterveneFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportInterveneFileAsyncRequest : Tea.TeaModel {
    public var agentKey: String?

    public var docName: String?

    public var fileKey: String?

    public var fileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DocName") && dict["DocName"] != nil {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.fileUrl = dict["FileUrl"] as! String
        }
    }
}

public class ImportInterveneFileAsyncResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") && dict["FailIdList"] != nil {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ImportInterveneFileAsyncResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ImportInterveneFileAsyncResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ImportInterveneFileAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportInterveneFileAsyncResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImportInterveneFileAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertInterveneGlobalReplyRequest : Tea.TeaModel {
    public class ReplyMessagList : Tea.TeaModel {
        public var message: String?

        public var replyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.replyType != nil {
                map["ReplyType"] = self.replyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ReplyType") && dict["ReplyType"] != nil {
                self.replyType = dict["ReplyType"] as! String
            }
        }
    }
    public var agentKey: String?

    public var replyMessagList: [InsertInterveneGlobalReplyRequest.ReplyMessagList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.replyMessagList != nil {
            var tmp : [Any] = []
            for k in self.replyMessagList! {
                tmp.append(k.toMap())
            }
            map["ReplyMessagList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReplyMessagList") && dict["ReplyMessagList"] != nil {
            var tmp : [InsertInterveneGlobalReplyRequest.ReplyMessagList] = []
            for v in dict["ReplyMessagList"] as! [Any] {
                var model = InsertInterveneGlobalReplyRequest.ReplyMessagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.replyMessagList = tmp
        }
    }
}

public class InsertInterveneGlobalReplyShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var replyMessagListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.replyMessagListShrink != nil {
            map["ReplyMessagList"] = self.replyMessagListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReplyMessagList") && dict["ReplyMessagList"] != nil {
            self.replyMessagListShrink = dict["ReplyMessagList"] as! String
        }
    }
}

public class InsertInterveneGlobalReplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") && dict["FailIdList"] != nil {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: InsertInterveneGlobalReplyResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = InsertInterveneGlobalReplyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InsertInterveneGlobalReplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertInterveneGlobalReplyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InsertInterveneGlobalReplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertInterveneRuleRequest : Tea.TeaModel {
    public class InterveneRuleConfig : Tea.TeaModel {
        public class AnswerConfig : Tea.TeaModel {
            public var answerType: Int32?

            public var message: String?

            public var namespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerType != nil {
                    map["AnswerType"] = self.answerType!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerType") && dict["AnswerType"] != nil {
                    self.answerType = dict["AnswerType"] as! Int32
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                    self.namespace = dict["Namespace"] as! String
                }
            }
        }
        public class EffectConfig : Tea.TeaModel {
            public var effectType: Int32?

            public var endTime: String?

            public var startTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.effectType != nil {
                    map["EffectType"] = self.effectType!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EffectType") && dict["EffectType"] != nil {
                    self.effectType = dict["EffectType"] as! Int32
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
            }
        }
        public class InterveneConfigList : Tea.TeaModel {
            public var id: String?

            public var operationType: Int32?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
                    self.operationType = dict["OperationType"] as! Int32
                }
                if dict.keys.contains("Query") && dict["Query"] != nil {
                    self.query = dict["Query"] as! String
                }
            }
        }
        public var answerConfig: [InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig]?

        public var effectConfig: InsertInterveneRuleRequest.InterveneRuleConfig.EffectConfig?

        public var interveneConfigList: [InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList]?

        public var interveneType: Int32?

        public var namespaceList: [String]?

        public var ruleId: Int64?

        public var ruleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerConfig != nil {
                var tmp : [Any] = []
                for k in self.answerConfig! {
                    tmp.append(k.toMap())
                }
                map["AnswerConfig"] = tmp
            }
            if self.effectConfig != nil {
                map["EffectConfig"] = self.effectConfig?.toMap()
            }
            if self.interveneConfigList != nil {
                var tmp : [Any] = []
                for k in self.interveneConfigList! {
                    tmp.append(k.toMap())
                }
                map["InterveneConfigList"] = tmp
            }
            if self.interveneType != nil {
                map["InterveneType"] = self.interveneType!
            }
            if self.namespaceList != nil {
                map["NamespaceList"] = self.namespaceList!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnswerConfig") && dict["AnswerConfig"] != nil {
                var tmp : [InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig] = []
                for v in dict["AnswerConfig"] as! [Any] {
                    var model = InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.answerConfig = tmp
            }
            if dict.keys.contains("EffectConfig") && dict["EffectConfig"] != nil {
                var model = InsertInterveneRuleRequest.InterveneRuleConfig.EffectConfig()
                model.fromMap(dict["EffectConfig"] as! [String: Any])
                self.effectConfig = model
            }
            if dict.keys.contains("InterveneConfigList") && dict["InterveneConfigList"] != nil {
                var tmp : [InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList] = []
                for v in dict["InterveneConfigList"] as! [Any] {
                    var model = InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneConfigList = tmp
            }
            if dict.keys.contains("InterveneType") && dict["InterveneType"] != nil {
                self.interveneType = dict["InterveneType"] as! Int32
            }
            if dict.keys.contains("NamespaceList") && dict["NamespaceList"] != nil {
                self.namespaceList = dict["NamespaceList"] as! [String]
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
        }
    }
    public var agentKey: String?

    public var interveneRuleConfig: InsertInterveneRuleRequest.InterveneRuleConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interveneRuleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneRuleConfig != nil {
            map["InterveneRuleConfig"] = self.interveneRuleConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneRuleConfig") && dict["InterveneRuleConfig"] != nil {
            var model = InsertInterveneRuleRequest.InterveneRuleConfig()
            model.fromMap(dict["InterveneRuleConfig"] as! [String: Any])
            self.interveneRuleConfig = model
        }
    }
}

public class InsertInterveneRuleShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var interveneRuleConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneRuleConfigShrink != nil {
            map["InterveneRuleConfig"] = self.interveneRuleConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneRuleConfig") && dict["InterveneRuleConfig"] != nil {
            self.interveneRuleConfigShrink = dict["InterveneRuleConfig"] as! String
        }
    }
}

public class InsertInterveneRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ruleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: InsertInterveneRuleResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = InsertInterveneRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InsertInterveneRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertInterveneRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InsertInterveneRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsyncTasksRequest : Tea.TeaModel {
    public var agentKey: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var size: Int32?

    public var taskCode: String?

    public var taskName: String?

    public var taskStatus: Int32?

    public var taskStatusList: [Int32]?

    public var taskType: String?

    public var taskTypeList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskStatusList != nil {
            map["TaskStatusList"] = self.taskStatusList!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskTypeList != nil {
            map["TaskTypeList"] = self.taskTypeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") && dict["CreateTimeStart"] != nil {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("TaskCode") && dict["TaskCode"] != nil {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TaskStatusList") && dict["TaskStatusList"] != nil {
            self.taskStatusList = dict["TaskStatusList"] as! [Int32]
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TaskTypeList") && dict["TaskTypeList"] != nil {
            self.taskTypeList = dict["TaskTypeList"] as! [String]
        }
    }
}

public class ListAsyncTasksShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var size: Int32?

    public var taskCode: String?

    public var taskName: String?

    public var taskStatus: Int32?

    public var taskStatusListShrink: String?

    public var taskType: String?

    public var taskTypeListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskStatusListShrink != nil {
            map["TaskStatusList"] = self.taskStatusListShrink!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskTypeListShrink != nil {
            map["TaskTypeList"] = self.taskTypeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") && dict["CreateTimeStart"] != nil {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("TaskCode") && dict["TaskCode"] != nil {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TaskStatusList") && dict["TaskStatusList"] != nil {
            self.taskStatusListShrink = dict["TaskStatusList"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TaskTypeList") && dict["TaskTypeList"] != nil {
            self.taskTypeListShrink = dict["TaskTypeList"] as! String
        }
    }
}

public class ListAsyncTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var taskCode: String?

        public var taskDefinition: String?

        public var taskEndTime: String?

        public var taskErrorMessage: String?

        public var taskExecuteTime: String?

        public var taskId: String?

        public var taskInnerErrorMessage: String?

        public var taskIntermediateResult: String?

        public var taskName: String?

        public var taskParam: String?

        public var taskProgressMessage: String?

        public var taskResult: String?

        public var taskRetryCount: String?

        public var taskStartTime: String?

        public var taskStatus: Int32?

        public var taskType: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskDefinition != nil {
                map["TaskDefinition"] = self.taskDefinition!
            }
            if self.taskEndTime != nil {
                map["TaskEndTime"] = self.taskEndTime!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskExecuteTime != nil {
                map["TaskExecuteTime"] = self.taskExecuteTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskInnerErrorMessage != nil {
                map["TaskInnerErrorMessage"] = self.taskInnerErrorMessage!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskParam != nil {
                map["TaskParam"] = self.taskParam!
            }
            if self.taskProgressMessage != nil {
                map["TaskProgressMessage"] = self.taskProgressMessage!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskRetryCount != nil {
                map["TaskRetryCount"] = self.taskRetryCount!
            }
            if self.taskStartTime != nil {
                map["TaskStartTime"] = self.taskStartTime!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("TaskCode") && dict["TaskCode"] != nil {
                self.taskCode = dict["TaskCode"] as! String
            }
            if dict.keys.contains("TaskDefinition") && dict["TaskDefinition"] != nil {
                self.taskDefinition = dict["TaskDefinition"] as! String
            }
            if dict.keys.contains("TaskEndTime") && dict["TaskEndTime"] != nil {
                self.taskEndTime = dict["TaskEndTime"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") && dict["TaskErrorMessage"] != nil {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskExecuteTime") && dict["TaskExecuteTime"] != nil {
                self.taskExecuteTime = dict["TaskExecuteTime"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskInnerErrorMessage") && dict["TaskInnerErrorMessage"] != nil {
                self.taskInnerErrorMessage = dict["TaskInnerErrorMessage"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") && dict["TaskIntermediateResult"] != nil {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskParam") && dict["TaskParam"] != nil {
                self.taskParam = dict["TaskParam"] as! String
            }
            if dict.keys.contains("TaskProgressMessage") && dict["TaskProgressMessage"] != nil {
                self.taskProgressMessage = dict["TaskProgressMessage"] as! String
            }
            if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                self.taskResult = dict["TaskResult"] as! String
            }
            if dict.keys.contains("TaskRetryCount") && dict["TaskRetryCount"] != nil {
                self.taskRetryCount = dict["TaskRetryCount"] as! String
            }
            if dict.keys.contains("TaskStartTime") && dict["TaskStartTime"] != nil {
                self.taskStartTime = dict["TaskStartTime"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListAsyncTasksResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListAsyncTasksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAsyncTasksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListAsyncTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsyncTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListAsyncTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBuildConfigsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListBuildConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Keywords : Tea.TeaModel {
            public var description_: String?

            public var key: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
            }
        }
        public var buildIn: Bool?

        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var keywords: [ListBuildConfigsResponseBody.Data.Keywords]?

        public var tag: String?

        public var tagDescription: String?

        public var type: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildIn != nil {
                map["BuildIn"] = self.buildIn!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywords != nil {
                var tmp : [Any] = []
                for k in self.keywords! {
                    tmp.append(k.toMap())
                }
                map["Keywords"] = tmp
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.tagDescription != nil {
                map["TagDescription"] = self.tagDescription!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildIn") && dict["BuildIn"] != nil {
                self.buildIn = dict["BuildIn"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
                var tmp : [ListBuildConfigsResponseBody.Data.Keywords] = []
                for v in dict["Keywords"] as! [Any] {
                    var model = ListBuildConfigsResponseBody.Data.Keywords()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.keywords = tmp
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("TagDescription") && dict["TagDescription"] != nil {
                self.tagDescription = dict["TagDescription"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListBuildConfigsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListBuildConfigsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListBuildConfigsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListBuildConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBuildConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListBuildConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDialoguesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var dialogueType: Int32?

    public var endTime: String?

    public var size: Int32?

    public var startTime: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.dialogueType != nil {
            map["DialogueType"] = self.dialogueType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DialogueType") && dict["DialogueType"] != nil {
            self.dialogueType = dict["DialogueType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListDialoguesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bot: String?

        public var createTime: String?

        public var createUser: String?

        public var dialogueType: Int32?

        public var taskId: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bot != nil {
                map["Bot"] = self.bot!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.dialogueType != nil {
                map["DialogueType"] = self.dialogueType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bot") && dict["Bot"] != nil {
                self.bot = dict["Bot"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DialogueType") && dict["DialogueType"] != nil {
                self.dialogueType = dict["DialogueType"] as! Int32
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListDialoguesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListDialoguesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListDialoguesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListDialoguesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDialoguesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDialoguesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGeneratedContentsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var contentDomain: String?

    public var current: Int32?

    public var endTime: String?

    public var size: Int32?

    public var startTime: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ContentDomain") && dict["ContentDomain"] != nil {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class ListGeneratedContentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var contentDomain: String?

        public var contentText: String?

        public var createTime: String?

        public var createUser: String?

        public var deviceId: String?

        public var id: Int64?

        public var keywordList: [String]?

        public var keywords: String?

        public var prompt: String?

        public var taskId: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentDomain != nil {
                map["ContentDomain"] = self.contentDomain!
            }
            if self.contentText != nil {
                map["ContentText"] = self.contentText!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywordList != nil {
                map["KeywordList"] = self.keywordList!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentDomain") && dict["ContentDomain"] != nil {
                self.contentDomain = dict["ContentDomain"] as! String
            }
            if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
                self.contentText = dict["ContentText"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("KeywordList") && dict["KeywordList"] != nil {
                self.keywordList = dict["KeywordList"] as! [String]
            }
            if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
                self.keywords = dict["Keywords"] as! String
            }
            if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListGeneratedContentsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListGeneratedContentsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListGeneratedContentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListGeneratedContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGeneratedContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListGeneratedContentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotNewsWithTypeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var newsType: String?

    public var newsTypes: [String]?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.newsType != nil {
            map["NewsType"] = self.newsType!
        }
        if self.newsTypes != nil {
            map["NewsTypes"] = self.newsTypes!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("NewsType") && dict["NewsType"] != nil {
            self.newsType = dict["NewsType"] as! String
        }
        if dict.keys.contains("NewsTypes") && dict["NewsTypes"] != nil {
            self.newsTypes = dict["NewsTypes"] as! [String]
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListHotNewsWithTypeShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var newsType: String?

    public var newsTypesShrink: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.newsType != nil {
            map["NewsType"] = self.newsType!
        }
        if self.newsTypesShrink != nil {
            map["NewsTypes"] = self.newsTypesShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("NewsType") && dict["NewsType"] != nil {
            self.newsType = dict["NewsType"] as! String
        }
        if dict.keys.contains("NewsTypes") && dict["NewsTypes"] != nil {
            self.newsTypesShrink = dict["NewsTypes"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListHotNewsWithTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public var author: String?

            public var content: String?

            public var docUuid: String?

            public var imageUrls: [String]?

            public var pubTime: String?

            public var searchSource: String?

            public var searchSourceName: String?

            public var source: String?

            public var summary: String?

            public var tag: String?

            public var title: String?

            public var updateTime: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.docUuid != nil {
                    map["DocUuid"] = self.docUuid!
                }
                if self.imageUrls != nil {
                    map["ImageUrls"] = self.imageUrls!
                }
                if self.pubTime != nil {
                    map["PubTime"] = self.pubTime!
                }
                if self.searchSource != nil {
                    map["SearchSource"] = self.searchSource!
                }
                if self.searchSourceName != nil {
                    map["SearchSourceName"] = self.searchSourceName!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Author") && dict["Author"] != nil {
                    self.author = dict["Author"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DocUuid") && dict["DocUuid"] != nil {
                    self.docUuid = dict["DocUuid"] as! String
                }
                if dict.keys.contains("ImageUrls") && dict["ImageUrls"] != nil {
                    self.imageUrls = dict["ImageUrls"] as! [String]
                }
                if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
                    self.pubTime = dict["PubTime"] as! String
                }
                if dict.keys.contains("SearchSource") && dict["SearchSource"] != nil {
                    self.searchSource = dict["SearchSource"] as! String
                }
                if dict.keys.contains("SearchSourceName") && dict["SearchSourceName"] != nil {
                    self.searchSourceName = dict["SearchSourceName"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Summary") && dict["Summary"] != nil {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var news: [ListHotNewsWithTypeResponseBody.Data.News]?

        public var newsType: String?

        public var newsTypeName: String?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.news != nil {
                var tmp : [Any] = []
                for k in self.news! {
                    tmp.append(k.toMap())
                }
                map["News"] = tmp
            }
            if self.newsType != nil {
                map["NewsType"] = self.newsType!
            }
            if self.newsTypeName != nil {
                map["NewsTypeName"] = self.newsTypeName!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("News") && dict["News"] != nil {
                var tmp : [ListHotNewsWithTypeResponseBody.Data.News] = []
                for v in dict["News"] as! [Any] {
                    var model = ListHotNewsWithTypeResponseBody.Data.News()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.news = tmp
            }
            if dict.keys.contains("NewsType") && dict["NewsType"] != nil {
                self.newsType = dict["NewsType"] as! String
            }
            if dict.keys.contains("NewsTypeName") && dict["NewsTypeName"] != nil {
                self.newsTypeName = dict["NewsTypeName"] as! String
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [ListHotNewsWithTypeResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListHotNewsWithTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListHotNewsWithTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListHotNewsWithTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotNewsWithTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListHotNewsWithTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneCntRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneCntResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cntList: [Any]?

        public var pageCnt: Int32?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cntList != nil {
                map["CntList"] = self.cntList!
            }
            if self.pageCnt != nil {
                map["PageCnt"] = self.pageCnt!
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CntList") && dict["CntList"] != nil {
                self.cntList = dict["CntList"] as! [Any]
            }
            if dict.keys.contains("PageCnt") && dict["PageCnt"] != nil {
                self.pageCnt = dict["PageCnt"] as! Int32
            }
            if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneCntResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListInterveneCntResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListInterveneCntResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneCntResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInterveneCntResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneImportTasksRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneImportTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatusList : Tea.TeaModel {
            public var msg: String?

            public var percentage: Int32?

            public var status: Int32?

            public var taskId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Msg") && dict["Msg"] != nil {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                    self.percentage = dict["Percentage"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var statusList: [ListInterveneImportTasksResponseBody.Data.StatusList]?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.statusList != nil {
                var tmp : [Any] = []
                for k in self.statusList! {
                    tmp.append(k.toMap())
                }
                map["StatusList"] = tmp
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("StatusList") && dict["StatusList"] != nil {
                var tmp : [ListInterveneImportTasksResponseBody.Data.StatusList] = []
                for v in dict["StatusList"] as! [Any] {
                    var model = ListInterveneImportTasksResponseBody.Data.StatusList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.statusList = tmp
            }
            if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneImportTasksResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListInterveneImportTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListInterveneImportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneImportTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInterveneImportTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneRulesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneRuleList : Tea.TeaModel {
            public class AnswerConfig : Tea.TeaModel {
                public var answerType: Int32?

                public var message: String?

                public var namespace: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerType != nil {
                        map["AnswerType"] = self.answerType!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnswerType") && dict["AnswerType"] != nil {
                        self.answerType = dict["AnswerType"] as! Int32
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
                    }
                }
            }
            public var answerConfig: [ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig]?

            public var createTime: String?

            public var effectTime: String?

            public var interveneType: Int32?

            public var namespaceList: [String]?

            public var ruleId: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerConfig != nil {
                    var tmp : [Any] = []
                    for k in self.answerConfig! {
                        tmp.append(k.toMap())
                    }
                    map["AnswerConfig"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.effectTime != nil {
                    map["EffectTime"] = self.effectTime!
                }
                if self.interveneType != nil {
                    map["InterveneType"] = self.interveneType!
                }
                if self.namespaceList != nil {
                    map["NamespaceList"] = self.namespaceList!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerConfig") && dict["AnswerConfig"] != nil {
                    var tmp : [ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig] = []
                    for v in dict["AnswerConfig"] as! [Any] {
                        var model = ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.answerConfig = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("EffectTime") && dict["EffectTime"] != nil {
                    self.effectTime = dict["EffectTime"] as! String
                }
                if dict.keys.contains("InterveneType") && dict["InterveneType"] != nil {
                    self.interveneType = dict["InterveneType"] as! Int32
                }
                if dict.keys.contains("NamespaceList") && dict["NamespaceList"] != nil {
                    self.namespaceList = dict["NamespaceList"] as! [String]
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var count: Int64?

        public var interveneRuleList: [ListInterveneRulesResponseBody.Data.InterveneRuleList]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.interveneRuleList != nil {
                var tmp : [Any] = []
                for k in self.interveneRuleList! {
                    tmp.append(k.toMap())
                }
                map["InterveneRuleList"] = tmp
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("InterveneRuleList") && dict["InterveneRuleList"] != nil {
                var tmp : [ListInterveneRulesResponseBody.Data.InterveneRuleList] = []
                for v in dict["InterveneRuleList"] as! [Any] {
                    var model = ListInterveneRulesResponseBody.Data.InterveneRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneRuleList = tmp
            }
            if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneRulesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListInterveneRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListInterveneRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInterveneRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var interveneType: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneType != nil {
            map["InterveneType"] = self.interveneType!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneType") && dict["InterveneType"] != nil {
            self.interveneType = dict["InterveneType"] as! Int32
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class ListIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneList : Tea.TeaModel {
            public var id: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Query") && dict["Query"] != nil {
                    self.query = dict["Query"] as! String
                }
            }
        }
        public var interveneList: [ListIntervenesResponseBody.Data.InterveneList]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interveneList != nil {
                var tmp : [Any] = []
                for k in self.interveneList! {
                    tmp.append(k.toMap())
                }
                map["InterveneList"] = tmp
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InterveneList") && dict["InterveneList"] != nil {
                var tmp : [ListIntervenesResponseBody.Data.InterveneList] = []
                for v in dict["InterveneList"] as! [Any] {
                    var model = ListIntervenesResponseBody.Data.InterveneList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneList = tmp
            }
            if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListIntervenesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIntervenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMaterialDocumentsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var docType: String?

    public var docTypeList: [String]?

    public var generatePublicUrl: Bool?

    public var id: Int64?

    public var keywords: [String]?

    public var query: String?

    public var shareAttr: Int32?

    public var size: Int32?

    public var title: String?

    public var updateTimeEnd: String?

    public var updateTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.docTypeList != nil {
            map["DocTypeList"] = self.docTypeList!
        }
        if self.generatePublicUrl != nil {
            map["GeneratePublicUrl"] = self.generatePublicUrl!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeEnd != nil {
            map["UpdateTimeEnd"] = self.updateTimeEnd!
        }
        if self.updateTimeStart != nil {
            map["UpdateTimeStart"] = self.updateTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") && dict["CreateTimeStart"] != nil {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("DocTypeList") && dict["DocTypeList"] != nil {
            self.docTypeList = dict["DocTypeList"] as! [String]
        }
        if dict.keys.contains("GeneratePublicUrl") && dict["GeneratePublicUrl"] != nil {
            self.generatePublicUrl = dict["GeneratePublicUrl"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeEnd") && dict["UpdateTimeEnd"] != nil {
            self.updateTimeEnd = dict["UpdateTimeEnd"] as! String
        }
        if dict.keys.contains("UpdateTimeStart") && dict["UpdateTimeStart"] != nil {
            self.updateTimeStart = dict["UpdateTimeStart"] as! String
        }
    }
}

public class ListMaterialDocumentsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var docType: String?

    public var docTypeListShrink: String?

    public var generatePublicUrl: Bool?

    public var id: Int64?

    public var keywordsShrink: String?

    public var query: String?

    public var shareAttr: Int32?

    public var size: Int32?

    public var title: String?

    public var updateTimeEnd: String?

    public var updateTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.docTypeListShrink != nil {
            map["DocTypeList"] = self.docTypeListShrink!
        }
        if self.generatePublicUrl != nil {
            map["GeneratePublicUrl"] = self.generatePublicUrl!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeEnd != nil {
            map["UpdateTimeEnd"] = self.updateTimeEnd!
        }
        if self.updateTimeStart != nil {
            map["UpdateTimeStart"] = self.updateTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") && dict["CreateTimeStart"] != nil {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("DocTypeList") && dict["DocTypeList"] != nil {
            self.docTypeListShrink = dict["DocTypeList"] as! String
        }
        if dict.keys.contains("GeneratePublicUrl") && dict["GeneratePublicUrl"] != nil {
            self.generatePublicUrl = dict["GeneratePublicUrl"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeEnd") && dict["UpdateTimeEnd"] != nil {
            self.updateTimeEnd = dict["UpdateTimeEnd"] as! String
        }
        if dict.keys.contains("UpdateTimeStart") && dict["UpdateTimeStart"] != nil {
            self.updateTimeStart = dict["UpdateTimeStart"] as! String
        }
    }
}

public class ListMaterialDocumentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var createTime: String?

        public var createUser: String?

        public var createUserName: String?

        public var docKeywords: [String]?

        public var docType: String?

        public var externalUrl: String?

        public var htmlContent: String?

        public var id: Int64?

        public var pubTime: String?

        public var publicUrl: String?

        public var shareAttr: Int32?

        public var srcFrom: String?

        public var summary: String?

        public var textContent: String?

        public var thumbnailInBase64: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var updateUserName: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.docKeywords != nil {
                map["DocKeywords"] = self.docKeywords!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.externalUrl != nil {
                map["ExternalUrl"] = self.externalUrl!
            }
            if self.htmlContent != nil {
                map["HtmlContent"] = self.htmlContent!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            if self.shareAttr != nil {
                map["ShareAttr"] = self.shareAttr!
            }
            if self.srcFrom != nil {
                map["SrcFrom"] = self.srcFrom!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.textContent != nil {
                map["TextContent"] = self.textContent!
            }
            if self.thumbnailInBase64 != nil {
                map["ThumbnailInBase64"] = self.thumbnailInBase64!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.updateUserName != nil {
                map["UpdateUserName"] = self.updateUserName!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") && dict["Author"] != nil {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
                self.docKeywords = dict["DocKeywords"] as! [String]
            }
            if dict.keys.contains("DocType") && dict["DocType"] != nil {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
                self.externalUrl = dict["ExternalUrl"] as! String
            }
            if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
                self.htmlContent = dict["HtmlContent"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("PublicUrl") && dict["PublicUrl"] != nil {
                self.publicUrl = dict["PublicUrl"] as! String
            }
            if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
                self.shareAttr = dict["ShareAttr"] as! Int32
            }
            if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
                self.srcFrom = dict["SrcFrom"] as! String
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
                self.textContent = dict["TextContent"] as! String
            }
            if dict.keys.contains("ThumbnailInBase64") && dict["ThumbnailInBase64"] != nil {
                self.thumbnailInBase64 = dict["ThumbnailInBase64"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("UpdateUserName") && dict["UpdateUserName"] != nil {
                self.updateUserName = dict["UpdateUserName"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListMaterialDocumentsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListMaterialDocumentsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListMaterialDocumentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListMaterialDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMaterialDocumentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListMaterialDocumentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVersionsRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ListVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var concurrentCount: Int32?

        public var endTime: String?

        public var instanceCount: Int32?

        public var instanceId: String?

        public var orderId: Int64?

        public var productType: String?

        public var quota: Int32?

        public var startTime: String?

        public var useQuota: Int32?

        public var versionDetail: String?

        public var versionName: String?

        public var versionStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrentCount != nil {
                map["ConcurrentCount"] = self.concurrentCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.useQuota != nil {
                map["UseQuota"] = self.useQuota!
            }
            if self.versionDetail != nil {
                map["VersionDetail"] = self.versionDetail!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            if self.versionStatus != nil {
                map["VersionStatus"] = self.versionStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConcurrentCount") && dict["ConcurrentCount"] != nil {
                self.concurrentCount = dict["ConcurrentCount"] as! Int32
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("InstanceCount") && dict["InstanceCount"] != nil {
                self.instanceCount = dict["InstanceCount"] as! Int32
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("Quota") && dict["Quota"] != nil {
                self.quota = dict["Quota"] as! Int32
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("UseQuota") && dict["UseQuota"] != nil {
                self.useQuota = dict["UseQuota"] as! Int32
            }
            if dict.keys.contains("VersionDetail") && dict["VersionDetail"] != nil {
                self.versionDetail = dict["VersionDetail"] as! String
            }
            if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
                self.versionName = dict["VersionName"] as! String
            }
            if dict.keys.contains("VersionStatus") && dict["VersionStatus"] != nil {
                self.versionStatus = dict["VersionStatus"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [ListVersionsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListVersionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListVersionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var taskCode: String?

        public var taskErrorMessage: String?

        public var taskId: String?

        public var taskIntermediateResult: String?

        public var taskName: String?

        public var taskParam: String?

        public var taskProgressMessage: String?

        public var taskResult: String?

        public var taskRetryCount: String?

        public var taskStatus: Int32?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskParam != nil {
                map["TaskParam"] = self.taskParam!
            }
            if self.taskProgressMessage != nil {
                map["TaskProgressMessage"] = self.taskProgressMessage!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskRetryCount != nil {
                map["TaskRetryCount"] = self.taskRetryCount!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("TaskCode") && dict["TaskCode"] != nil {
                self.taskCode = dict["TaskCode"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") && dict["TaskErrorMessage"] != nil {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") && dict["TaskIntermediateResult"] != nil {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskParam") && dict["TaskParam"] != nil {
                self.taskParam = dict["TaskParam"] as! String
            }
            if dict.keys.contains("TaskProgressMessage") && dict["TaskProgressMessage"] != nil {
                self.taskProgressMessage = dict["TaskProgressMessage"] as! String
            }
            if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                self.taskResult = dict["TaskResult"] as! String
            }
            if dict.keys.contains("TaskRetryCount") && dict["TaskRetryCount"] != nil {
                self.taskRetryCount = dict["TaskRetryCount"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") && dict["UpdateUser"] != nil {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryAsyncTaskResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryAsyncTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveDataSourceOrderConfigRequest : Tea.TeaModel {
    public class UserConfigDataSourceList : Tea.TeaModel {
        public var code: String?

        public var name: String?

        public var number: Int32?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var agentKey: String?

    public var productCode: String?

    public var userConfigDataSourceList: [SaveDataSourceOrderConfigRequest.UserConfigDataSourceList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.userConfigDataSourceList != nil {
            var tmp : [Any] = []
            for k in self.userConfigDataSourceList! {
                tmp.append(k.toMap())
            }
            map["UserConfigDataSourceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserConfigDataSourceList") && dict["UserConfigDataSourceList"] != nil {
            var tmp : [SaveDataSourceOrderConfigRequest.UserConfigDataSourceList] = []
            for v in dict["UserConfigDataSourceList"] as! [Any] {
                var model = SaveDataSourceOrderConfigRequest.UserConfigDataSourceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userConfigDataSourceList = tmp
        }
    }
}

public class SaveDataSourceOrderConfigShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var productCode: String?

    public var userConfigDataSourceListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.userConfigDataSourceListShrink != nil {
            map["UserConfigDataSourceList"] = self.userConfigDataSourceListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserConfigDataSourceList") && dict["UserConfigDataSourceList"] != nil {
            self.userConfigDataSourceListShrink = dict["UserConfigDataSourceList"] as! String
        }
    }
}

public class SaveDataSourceOrderConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveDataSourceOrderConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveDataSourceOrderConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveDataSourceOrderConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveMaterialDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var bothSavePrivateAndShare: Bool?

    public var docKeywords: [String]?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.bothSavePrivateAndShare != nil {
            map["BothSavePrivateAndShare"] = self.bothSavePrivateAndShare!
        }
        if self.docKeywords != nil {
            map["DocKeywords"] = self.docKeywords!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") && dict["Author"] != nil {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("BothSavePrivateAndShare") && dict["BothSavePrivateAndShare"] != nil {
            self.bothSavePrivateAndShare = dict["BothSavePrivateAndShare"] as! Bool
        }
        if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
            self.docKeywords = dict["DocKeywords"] as! [String]
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class SaveMaterialDocumentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var bothSavePrivateAndShare: Bool?

    public var docKeywordsShrink: String?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.bothSavePrivateAndShare != nil {
            map["BothSavePrivateAndShare"] = self.bothSavePrivateAndShare!
        }
        if self.docKeywordsShrink != nil {
            map["DocKeywords"] = self.docKeywordsShrink!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") && dict["Author"] != nil {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("BothSavePrivateAndShare") && dict["BothSavePrivateAndShare"] != nil {
            self.bothSavePrivateAndShare = dict["BothSavePrivateAndShare"] as! Bool
        }
        if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
            self.docKeywordsShrink = dict["DocKeywords"] as! String
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class SaveMaterialDocumentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveMaterialDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveMaterialDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveMaterialDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchNewsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var filterNotNull: Bool?

    public var includeContent: Bool?

    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var searchSources: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.filterNotNull != nil {
            map["FilterNotNull"] = self.filterNotNull!
        }
        if self.includeContent != nil {
            map["IncludeContent"] = self.includeContent!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchSources != nil {
            map["SearchSources"] = self.searchSources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FilterNotNull") && dict["FilterNotNull"] != nil {
            self.filterNotNull = dict["FilterNotNull"] as! Bool
        }
        if dict.keys.contains("IncludeContent") && dict["IncludeContent"] != nil {
            self.includeContent = dict["IncludeContent"] as! Bool
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SearchSources") && dict["SearchSources"] != nil {
            self.searchSources = dict["SearchSources"] as! [String]
        }
    }
}

public class SearchNewsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var filterNotNull: Bool?

    public var includeContent: Bool?

    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var searchSourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.filterNotNull != nil {
            map["FilterNotNull"] = self.filterNotNull!
        }
        if self.includeContent != nil {
            map["IncludeContent"] = self.includeContent!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchSourcesShrink != nil {
            map["SearchSources"] = self.searchSourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FilterNotNull") && dict["FilterNotNull"] != nil {
            self.filterNotNull = dict["FilterNotNull"] as! Bool
        }
        if dict.keys.contains("IncludeContent") && dict["IncludeContent"] != nil {
            self.includeContent = dict["IncludeContent"] as! Bool
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SearchSources") && dict["SearchSources"] != nil {
            self.searchSourcesShrink = dict["SearchSources"] as! String
        }
    }
}

public class SearchNewsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var content: String?

        public var docUuid: String?

        public var imageUrls: [String]?

        public var pubTime: String?

        public var searchSource: String?

        public var searchSourceName: String?

        public var source: String?

        public var summary: String?

        public var tag: String?

        public var title: String?

        public var updateTime: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.docUuid != nil {
                map["DocUuid"] = self.docUuid!
            }
            if self.imageUrls != nil {
                map["ImageUrls"] = self.imageUrls!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.searchSource != nil {
                map["SearchSource"] = self.searchSource!
            }
            if self.searchSourceName != nil {
                map["SearchSourceName"] = self.searchSourceName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") && dict["Author"] != nil {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DocUuid") && dict["DocUuid"] != nil {
                self.docUuid = dict["DocUuid"] as! String
            }
            if dict.keys.contains("ImageUrls") && dict["ImageUrls"] != nil {
                self.imageUrls = dict["ImageUrls"] as! [String]
            }
            if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("SearchSource") && dict["SearchSource"] != nil {
                self.searchSource = dict["SearchSource"] as! String
            }
            if dict.keys.contains("SearchSourceName") && dict["SearchSourceName"] != nil {
                self.searchSourceName = dict["SearchSourceName"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [SearchNewsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchNewsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchNewsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class SearchNewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchNewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchNewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskCode: String?

    public var taskExecuteTime: String?

    public var taskName: String?

    public var taskParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskExecuteTime != nil {
            map["TaskExecuteTime"] = self.taskExecuteTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskParam != nil {
            map["TaskParam"] = self.taskParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskCode") && dict["TaskCode"] != nil {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskExecuteTime") && dict["TaskExecuteTime"] != nil {
            self.taskExecuteTime = dict["TaskExecuteTime"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskParam") && dict["TaskParam"] != nil {
            self.taskParam = dict["TaskParam"] as! String
        }
    }
}

public class SubmitAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public var taskIntermediateResult: Any?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") && dict["TaskIntermediateResult"] != nil {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! Any
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitAsyncTaskResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitAsyncTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentText: String?

    public var id: Int64?

    public var keywords: [String]?

    public var prompt: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateGeneratedContentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentText: String?

    public var id: Int64?

    public var keywordsShrink: String?

    public var prompt: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentText") && dict["ContentText"] != nil {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Prompt") && dict["Prompt"] != nil {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGeneratedContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMaterialDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var docKeywords: [String]?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var id: Int64?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.docKeywords != nil {
            map["DocKeywords"] = self.docKeywords!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") && dict["Author"] != nil {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
            self.docKeywords = dict["DocKeywords"] as! [String]
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class UpdateMaterialDocumentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var docKeywordsShrink: String?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var id: Int64?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.docKeywordsShrink != nil {
            map["DocKeywords"] = self.docKeywordsShrink!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") && dict["Author"] != nil {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("DocKeywords") && dict["DocKeywords"] != nil {
            self.docKeywordsShrink = dict["DocKeywords"] as! String
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") && dict["ExternalUrl"] != nil {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") && dict["HtmlContent"] != nil {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") && dict["ShareAttr"] != nil {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") && dict["SrcFrom"] != nil {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") && dict["TextContent"] != nil {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class UpdateMaterialDocumentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateMaterialDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMaterialDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateMaterialDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
